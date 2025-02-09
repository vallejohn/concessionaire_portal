import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/authentication_exception.dart';

enum AuthenticationEndpoint { login, register, confirmOTP }

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
    Map<String, dynamic> data,
  ) async {
    try {
      late EndpointResponse endpointResponse;
      switch (endpoint) {
        case AuthenticationEndpoint.login:
          endpointResponse = await _doPostRequest(
            '$_baseUrl/api/login',
            params: data,
          );
          break;
        case AuthenticationEndpoint.register:
          endpointResponse = await _doPostRequest(
            '$_baseUrl/api/register',
            params: data,
          );
          break;
        case AuthenticationEndpoint.confirmOTP:
          endpointResponse = await _doPostRequest(
            '$_baseUrl/api/register-send-otp',
            params: data,
          );
          break;
      }
      return endpointResponse;
    } on DioException catch (_) {
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
