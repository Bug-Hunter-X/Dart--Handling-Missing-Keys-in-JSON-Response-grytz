```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON array
      final List<dynamic> data = jsonDecode(response.body);

      //Error: Incorrect type handling
      for (var item in data) {
        print(item['name']); // potential error if 'name' is missing
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```