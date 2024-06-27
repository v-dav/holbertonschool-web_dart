import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  String result = await fetchUserData();
  Map resultJson = jsonDecode(result);
  return resultJson["id"];
}
