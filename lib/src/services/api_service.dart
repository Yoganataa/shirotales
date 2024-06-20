import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'xxx';
  final String _apiKey = 'xxx';  // Replace with your actual API key

  Future<dynamic> registerUser({
    required String name,
    required String username,
    required String email,
    required String password,
    required String passwordConfirmation,
    required String role,
    required String dateOfBirth,
  }) async {
    var dio = Dio();
    var headers = {
      'Content-Type': 'application/json',
      'X-API-Key': _apiKey,
    };

    var data = {
      "name": name,
      "username": username,
      "email": email,
      "password": password,
      "password_confirmation": passwordConfirmation,
      "role": role,
      "date_of_birth": dateOfBirth,
    };

    var response = await dio.request(
      '$_baseUrl/register',
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    );

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('Failed to register user: ${response.statusMessage}');
    }
  }

  Future<dynamic> loginUser({
    required String email,
    required String password,
  }) async {
    var dio = Dio();
    var headers = {
      'Content-Type': 'application/json',
      'X-API-Key': _apiKey,
    };

    var data = {
      "email": email,
      "password": password,
    };

    var response = await dio.request(
      '$_baseUrl/login',
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    );

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('Failed to login: ${response.statusMessage}');
    }
  }

  Future<dynamic> getProfile({required String token}) async {
    var dio = Dio();
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var response = await dio.request(
      '$_baseUrl/users/profile',
      options: Options(
        method: 'GET',
        headers: headers,
      ),
    );

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('Failed to get profile: ${response.statusMessage}');
    }
  }

  Future<dynamic> logout({required String token}) async {
    var dio = Dio();
    var headers = {
      'Authorization': 'Bearer $token',
    };

    var response = await dio.request(
      '$_baseUrl/users/logout',
      options: Options(
        method: 'POST',
        headers: headers,
      ),
    );

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('Failed to logout: ${response.statusMessage}');
    }
  }
}
