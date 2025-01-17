import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:mwd_concessionaire_portal/core/exceptions/authentication_exception.dart';

enum AuthenticationEndpoint { login }

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
        'content-type': 'application/json',
        //'Authorization': 'Bearer ',
      };
  }

  static Future<EndpointResponse> authentication(
    AuthenticationEndpoint endpoint,
      Map<String, dynamic> data,
  )async {
    try{
      switch (endpoint) {
        case AuthenticationEndpoint.login:
          final response = await _dio.post(
            '$_baseUrl/api/login',
            data: data,
          );
          return EndpointResponse(body: response.data);
      }
    }on DioException catch(dioError){
      throw AuthenticationException(dioError.message?? 'Unknown Error');
    }
  }
}
