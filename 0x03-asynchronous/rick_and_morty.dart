import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> printRmCharacters() async {
  try {
    final response = await http.get(
      Uri.parse('https://rickandmortyapi.com/api/character'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final characters = data['results'];

      for (var char in characters) {
        print(char['name']);
      }
      return 'success';
    } else {
      return 'Error ${response.statusCode}';
    }
  } catch (e) {
    return 'error caught: $e';
  }
}
