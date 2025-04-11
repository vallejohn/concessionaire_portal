import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/authentication_exception.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/core/params.dart';
import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';

import '../db/hive/collections/authentication_collection.dart';

enum Operation {post, get}

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
  accounts,
  linkNewAccount,
  delete,
}

enum BillingEndpoint {
  bills,
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
    late EndpointResponse endpointResponse;
    switch (endpoint) {
      case AuthenticationEndpoint.login:
        assert(data is LoginParams, 'Incorrect parameter type');
        LoginParams params = data as LoginParams;

        endpointResponse = await _doRequest(
            '$_baseUrl/api/login',
            params: params.toJson(),
            onError: onError,
            onSuccess: onSuccess
        );
        _updateHeaderToken(
          endpointResponse.body['access_token'],
        );
        _dio.options.headers = _headers;
        break;
      case AuthenticationEndpoint.register:
        assert(data is SignupParams, 'Incorrect parameter type');
        SignupParams params = data as SignupParams;

        endpointResponse = await _doRequest(
            '$_baseUrl/api/register',
            params: params.toJson(),
            onError: onError,
            onSuccess: onSuccess
        );
        break;
      case AuthenticationEndpoint.registerSendOTP:
        endpointResponse = await _doRequest(
            '$_baseUrl/api/register-send-otp',
            params: data,
            onError: onError,
            onSuccess: onSuccess
        );
        break;
      case AuthenticationEndpoint.confirmOTP:
        assert(data is OTPParams, 'Incorrect parameter type');
        OTPParams params = data as OTPParams;

        endpointResponse = await _doRequest(
            '$_baseUrl/api/verify-phone',
            params: params.toJson(),
            onError: onError,
            onSuccess: onSuccess
        );
        break;
      case AuthenticationEndpoint.forgotPasswordSendOTP:
        assert(data is OTPParams, 'Incorrect parameter type');
        OTPParams params = data as OTPParams;

        endpointResponse = await _doRequest(
            '$_baseUrl/api/forgot-password-otp',
            params: params.toJson(),
            onError: onError,
            onSuccess: onSuccess
        );
        break;
      case AuthenticationEndpoint.forgotPassword:
        endpointResponse = await _doRequest(
            '$_baseUrl/api/forgot-password',
            params: data,
            onError: onError,
            onSuccess: onSuccess
        );
      case AuthenticationEndpoint.createPassword:
        endpointResponse = await _doRequest(
            '$_baseUrl/api/reset-password',
            params: data,
            onError: onError,
            onSuccess: onSuccess
        );
    }

    return endpointResponse;
  }

  static Future<EndpointResponse> profile(
    ProfileEndpoint endpoint,
    dynamic data, {
    final void Function(DynamicError)? onError,
    final void Function(
      Map<String, dynamic> success,
    )? onSuccess,
  }) async {
    late EndpointResponse endpointResponse;
    switch (endpoint) {
      case ProfileEndpoint.linkNewAccount:
        assert(data is LinkAccountParams, 'Incorrect parameter type');
        LinkAccountParams params = data as LinkAccountParams;

        endpointResponse = await _doRequest(
          '$_baseUrl/api/account-number-store',
          params: params.toJson(),
          onError: onError,
          onSuccess: onSuccess
        );
        break;
      case ProfileEndpoint.accounts:
        endpointResponse = await _doRequest(
            '$_baseUrl/api/account-number',
            operation: Operation.get,
            onError: onError,
            onSuccess: onSuccess
        );
        break;
      case ProfileEndpoint.delete:
        assert(data is DeleteAccountsParam, 'Incorrect parameter type');
        DeleteAccountsParam params = data as DeleteAccountsParam;

        endpointResponse = await _doRequest(
            '$_baseUrl/api/account-number-delete',
            params: params.toJson(),
            onError: onError,
            onSuccess: onSuccess
        );
        break;
    }

    return endpointResponse;
  }

  static Future<EndpointResponse> billing(
      BillingEndpoint endpoint,
      dynamic data, {
        final void Function(DynamicError)? onError,
        final void Function(
            Map<String, dynamic> success,
            )? onSuccess,
      }) async {
    late EndpointResponse endpointResponse;
    switch (endpoint) {
      case BillingEndpoint.bills:
        assert(data is BillingHistoryParams, 'Incorrect parameter type');
        BillingHistoryParams params = data as BillingHistoryParams;

        endpointResponse = await _doRequest(
            '$_baseUrl/api/bills?account_number=${params.accountNo}',
            operation: Operation.get,
            onError: onError,
            onSuccess: onSuccess
        );
        break;
    }

    return endpointResponse;
  }

  static Future<EndpointResponse> _doRequest(
    String url, {
      Operation operation = Operation.post,
    Map<String, dynamic>? params,
        final void Function(DynamicError)? onError,
        final void Function(
            Map<String, dynamic> success,
            )? onSuccess,
  }) async {
    try{
      Logger().d({
        'Path': url,
        'Access Token': _headers['Authorization'],
        'Parameters': params,
      });

      late Response response;

      switch(operation){
        case Operation.post:
          response = await _dio.post(
            url,
            data: params,
          );
        case Operation.get:
          response = await _dio.get(
            url,
            data: params,
          );
      }


      Logger().d({
        'Path': url,
        'Access Token': _headers['Authorization'],
        'Parameters': params,
        'Endpoint Response': response.data,
      });

      final body = response.data;
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

      return EndpointResponse(
        body: response.data,
      );
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
}
