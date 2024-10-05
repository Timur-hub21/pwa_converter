import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pwa_converter/utils/constants.dart';

final class ApiService {
  final String baseUrl;

  const ApiService() : baseUrl = Constants.baseUrl;

  Future<T> get<T>(String endpoint) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl$endpoint'));

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error occurred while fetching data: $e');
    }
  }

  Future<T> post<T>(String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl$endpoint'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to post data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error occurred while posting data: $e');
    }
  }

  Future<T> put<T>(String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await http.put(
        Uri.parse('$baseUrl$endpoint'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data),
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to update data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error occurred while updating data: $e');
    }
  }

  Future<T> delete<T>(String endpoint) async {
    try {
      final response = await http.delete(Uri.parse('$baseUrl$endpoint'));

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to delete data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error occurred while deleting data: $e');
    }
  }
}
