import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:test_qtasnim/data/network/exception/api_exception.dart';
import 'package:test_qtasnim/data/network/log/log_network.dart';
import 'package:test_qtasnim/data/network/network_interface.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';

@lazySingleton
class NetworkImplement implements NetworkInterfaces {
  final Dio _dio;
  NetworkImplement(this._dio);

  appInterceptor() {
    _dio.interceptors.clear();
    _dio.interceptors.add(
      RetryInterceptor(
        dio: _dio,
        retries: 3, // retry count (optional)
        retryDelays: const [
          // set delays between retries (optional)
          Duration(seconds: 1), // wait 1 sec before first retry
          Duration(seconds: 2), // wait 2 sec before second retry
          Duration(seconds: 3), // wait 3 sec before third retry
        ],
      ),
    );
    LogNetwork.log(_dio);
  }

  @override
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      appInterceptor();
      Response res = await _dio.get(url, queryParameters: queryParameters);
      return res;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        throw e.response!.data["message"];
      } else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw FetchException("Request time out");
      } else {
        throw 'Tidak ada koneksi internet';
      }
    } on SocketException {
      throw 'Tidak ada koneksi internet';
    }
  }

  @override
  Future<Response> post({String? url, FormData? body}) async {
    try {
      appInterceptor();
      Response res = await _dio.post(url!, data: body);
      return res;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        throw e.response!.data["message"];
      } else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw FetchException("Request time out");
      } else {
        throw 'Tidak ada koneksi internet';
      }
    } on SocketException {
      throw 'Tidak ada koneksi internet';
    }
  }

  @override
  Future<Response> put(String url, Map<String, dynamic> body) async {
    try {
      appInterceptor();
      Response res = await _dio.put(
        url,
        data: body,
        options: Options(contentType: Headers.formUrlEncodedContentType),
      );
      return res;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        throw e.response!.data["message"];
      } else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw FetchException("Request time out");
      } else {
        throw 'Tidak ada koneksi internet';
      }
    } on SocketException {
      throw 'Tidak ada koneksi internet';
    }
  }

  @override
  Future<Response> delete(String url) async {
    try {
      appInterceptor();
      Response res = await _dio.delete(url);
      return res;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        throw e.response!.data["message"];
      } else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw FetchException("Request time out");
      } else {
        throw 'Tidak ada koneksi internet';
      }
    } on SocketException {
      throw 'Tidak ada koneksi internet';
    }
  }
}
