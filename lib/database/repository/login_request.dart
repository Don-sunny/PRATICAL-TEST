import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practical_test/database/repository/data_base_helper.dart';

void sendRequest() async {
  final url = 'https://bmw.codeland.in/web/session/authenticate';

  // Define the request body
  final requestBody = {
    "params": {
      "login": "don",
      "password": "123456",
      "db": "cabs",
    }
  };

  // Encode the request body as JSON
  final encodedBody = jsonEncode(requestBody);

  try {
    // Send the POST request
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
      body: encodedBody,
    );

    // Check if the request was successful (status code 200)
    if (response.statusCode == 200) {
      // Parse and handle the response data
      final responseData = jsonDecode(response.body);
      DatabaseHelper().insertuser(UserData(
          lang: responseData['result']['user_context']['lang'],
          tz: responseData['result']['user_context']['tz']));

      print('Response: $responseData');
    } else {
      // Handle errors or other status codes
      print('Error: ${response.statusCode}');
      print('Response: ${response.body}');
    }
  } catch (error) {
    // Handle any exceptions that may occur
    print('Error: $error');
  }
}
