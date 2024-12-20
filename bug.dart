```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      final data = jsonDecode(response.body);
      // ignore: unused_local_variable
      final String someData = data['someKey']; 
    } else {
      // Handle the error
      throw Exception('Failed to load data');
    } 
  } catch (e) {
    // Handle error
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled higher up
  }
}
```