import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/authentication_exception.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';

import '../db/hive/collections/authentication_collection.dart';

enum AuthenticationEndpoint {
  login,
  register,
  confirmOTP,
  forgotPassword,
  createPassword,
  forgotPasswordSendOTP,
  registerSendOTP,
}

enum ProfileEndpoint {
  linkNewAccount,
}

class EndpointResponse {
  final int? statusCode;
  final Map<String, dynamic> body;
  final void Function(List<FieldError> errors, String message)? onError;
  final void Function(dynamic success)? onSuccess;

  EndpointResponse({
    required this.body,
    this.statusCode,
    this.onError,
    this.onSuccess,
  });
}

class APIEndpointService {
  static late Dio _dio;
  static late Map<String, dynamic> _headers;
  static late String _baseUrl;

  APIEndpointService._internal();

  static final APIEndpointService _instance = APIEndpointService._internal();

  factory APIEndpointService() => _instance;

  static void init() async {
    _baseUrl = FlavorConfig.instance.variables['baseUrl'];
    String accessToken = '';

    final authenticationCollection = GetIt.instance<AuthenticationCollection>();
    final data = await authenticationCollection.read();

    _headers = {
      'Accept': 'application/json',
    };

    if (data != null) {
      accessToken = data.user!.accessToken;
      _updateHeaderToken(accessToken);
    }

    _dio = Dio();
    _dio
      ..interceptors.add(LogInterceptor(
        request: true,
        responseBody: true,
        logPrint: (Object obj) {},
      ))
      ..options.headers = _headers;
  }

  static _updateHeaderToken(String token) {
    _headers.addAll({'Authorization': 'Bearer $token'});
  }

  static Future<EndpointResponse> authentication(
    AuthenticationEndpoint endpoint,
    dynamic data, {
    final void Function(DynamicError)? onError,
    final void Function(
      Map<String, dynamic> success,
    )? onSuccess,
  }) async {
    try {
      late EndpointResponse endpointResponse;
      switch (endpoint) {
        case AuthenticationEndpoint.login:
          assert(data is LoginParams, 'Incorrect parameter type');
          LoginParams params = data as LoginParams;

          endpointResponse = await _doPostRequest(
            '$_baseUrl/api/login',
            params: params.toJson(),
          );
          _updateHeaderToken(
            endpointResponse.body['access_token'],
          );
          _dio.options.headers = _headers;
          break;
        case AuthenticationEndpoint.register:
          assert(data is SignupParams, 'Incorrect parameter type');
          SignupParams params = data as SignupParams;

          endpointResponse = await _doPostRequest(
            '$_baseUrl/api/register',
            params: params.toJson(),
          );
          break;
        case AuthenticationEndpoint.registerSendOTP:
          endpointResponse = await _doPostRequest(
            '$_baseUrl/api/register-send-otp',
            params: data,
          );
          break;
        case AuthenticationEndpoint.confirmOTP:
          assert(data is OTPParams, 'Incorrect parameter type');
          OTPParams params = data as OTPParams;

          endpointResponse = await _doPostRequest(
            '$_baseUrl/api/verify-phone',
            params: params.toJson(),
          );
          break;
        case AuthenticationEndpoint.forgotPasswordSendOTP:
          assert(data is OTPParams, 'Incorrect parameter type');
          OTPParams params = data as OTPParams;

          endpointResponse = await _doPostRequest(
            '$_baseUrl/api/forgot-password-otp',
            params: params.toJson(),
          );
          break;
        case AuthenticationEndpoint.forgotPassword:
          endpointResponse = await _doPostRequest(
            '$_baseUrl/api/forgot-password',
            params: data,
          );
        case AuthenticationEndpoint.createPassword:
          endpointResponse = await _doPostRequest(
            '$_baseUrl/api/reset-password',
            params: data,
          );
      }

      final body = endpointResponse.body;
      String status = body['status'];

      if (status == 'error') {
        List<FieldError> fieldErrors = [];
        String message = '';

        if (body['message'] is Map) {
          final errorsRaw = body['message'] as Map;
          final List<FieldError> errors = errorsRaw.entries.map((e) {
            return FieldError(field: e.key, message: e.value);
          }).toList();
          fieldErrors = errors;
        }

        if (body['message'] is String) {
          message = body['message'];
        }

        onError?.call(DynamicError(
          fields: fieldErrors,
          message: message,
        ));
      } else if (status == 'success') {
        onSuccess?.call(body);
      }

      return endpointResponse;
    } on DioException catch (e) {
      Logger().e(e.message);
      throw ServerException(
        const DynamicError(
          message: 'Something went wrong while processing '
              'your request. Please try again later.',
        ),
      );
    }
  }

  static Future<EndpointResponse> profile(
    ProfileEndpoint endpoint,
    dynamic data, {
    final void Function(DynamicError)? onError,
    final void Function(
      Map<String, dynamic> success,
    )? onSuccess,
  }) async {
    try {
      late EndpointResponse endpointResponse;
      switch (endpoint) {
        case ProfileEndpoint.linkNewAccount:
          assert(data is LinkAccountParams, 'Incorrect parameter type');
          LinkAccountParams params = data as LinkAccountParams;

          endpointResponse = await _doPostRequest(
            '$_baseUrl/api/account-number-store',
            params: params.toJson(),
          );
          break;
      }

      final body = endpointResponse.body;
      String status = body['status'];

      if (status == 'error') {
        List<FieldError> fieldErrors = [];
        String message = '';

        if (body['message'] is Map) {
          final errorsRaw = body['message'] as Map;
          final List<FieldError> errors = errorsRaw.entries.map((e) {
            return FieldError(field: e.key, message: e.value);
          }).toList();
          fieldErrors = errors;
        }

        if (body['message'] is String) {
          message = body['message'];
        }

        onError?.call(DynamicError(
          fields: fieldErrors,
          message: message,
        ));
      } else if (status == 'success') {
        onSuccess?.call(body);
      }

      return endpointResponse;
    } on DioException catch (e) {
      Logger().e(e.message);
      throw ServerException(
        const DynamicError(
          message: 'Something went wrong while processing '
              'your request. Please try again later.',
        ),
      );
    }
  }

  static Future<EndpointResponse> _doPostRequest(
    String url, {
    Map<String, dynamic>? params,
  }) async {
    Logger().d({
      'Path': url,
      'Access Token': _headers['Authorization'],
      'Parameters': params,
    });
    final response = await _dio.post(
      url,
      data: params,
    );
    Logger().d({
      'Path': url,
      'Access Token': _headers['Authorization'],
      'Parameters': params,
      'Endpoint Response': response.data,
    });

    return EndpointResponse(
      body: response.data,
    );
  }
}
