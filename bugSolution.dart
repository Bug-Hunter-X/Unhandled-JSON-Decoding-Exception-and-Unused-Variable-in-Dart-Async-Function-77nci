```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        // Use the extracted data
        final String? someData = data['someKey'];
        print('Data received: $someData');
      } on FormatException catch (e) {
        print('Error decoding JSON: $e');
        print('Response Body: ${response.body}');
      } catch (e) {
        print('An unexpected error occured: $e');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}
```