import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/authentication_exception.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';

enum AuthenticationEndpoint {
  login,
  register,
  confirmOTP,
  forgotPassword,
  createPassword,
  forgotPasswordSendOTP,
  registerSendOTP,
}

class EndpointResponse {
  final int? statusCode;
  final Map<String, dynamic> body;

  EndpointResponse({required this.body, this.statusCode});
}

class APIEndpointService {
  static late Dio _dio;
  static late String _baseUrl;

  APIEndpointService._internal();

  static final APIEndpointService _instance = APIEndpointService._internal();

  factory APIEndpointService() => _instance;

  static void init() {
    _baseUrl = FlavorConfig.instance.variables['baseUrl'];

    _dio = Dio();
    _dio
      ..interceptors.add(LogInterceptor(
        request: true,
        responseBody: true,
        logPrint: (Object obj) {},
      ))
      ..options.headers = {
        'Accept': 'application/json',
      };
  }

  static Future<EndpointResponse> authentication(
    AuthenticationEndpoint endpoint,
    dynamic data,
  ) async {
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
      return endpointResponse;
    } on DioException catch (e) {
      Logger().e(e.message);
      throw AuthenticationException(
        'Something went wrong while processing '
        'your request. Please try again later.',
      );
    }
  }

  static Future<EndpointResponse> _doPostRequest(
    String url, {
    Map<String, dynamic>? params,
  }) async {
    Logger().d({
      'Path': url,
      'Parameters': params,
    });
    final response = await _dio.post(
      url,
      data: params,
    );
    Logger().d({
      'Path': url,
      'Parameters': params,
      'Endpoint Response': response.data,
    });
    return EndpointResponse(body: response.data);
  }
}
