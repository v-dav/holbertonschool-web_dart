import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    var response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<dynamic> characters = data['results'];
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('Failed to load characters: ${response.statusCode}');
    }
  } catch (error) {
    print('error caught: $error');
  }
}
