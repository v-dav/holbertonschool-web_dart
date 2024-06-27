import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String userString = await fetchUserData();
    Map userJson = jsonDecode(userString);
    return 'Hello ${userJson["username"]}';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    if (await checkCredentials()) {
      print('There is a user: true');
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
