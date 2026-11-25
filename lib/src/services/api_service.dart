import 'package:api_call/src/config/new_app-config.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
  Future<Response> getPost() async {
    try {
      final Response = await dio.get('$userPost');
      return Response;
    } catch (e) {
      throw Exception('Api Error: $e');
    }
  }
}
