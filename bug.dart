```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      final jsonData = jsonDecode(response.body);
      // Error is likely to happen here. If the server sends invalid JSON 
      // like an empty string, it throws a FormatException.
      print(jsonData['key']); 
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle the exception (print the stack trace for debugging)
    print('Error: $e');
  }
}
```