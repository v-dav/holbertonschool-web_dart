import '4-util.dart';
import 'dart:convert';

Future<dynamic> calculateTotal() async {
  try {
    Map userData = jsonDecode(await fetchUserData());
    String userId = userData["id"];
    List userOrders = jsonDecode(await fetchUserOrders(userId));
    double total = 0;

    for (final product in userOrders) {
      double price = double.parse(await fetchProductPrice(product));
      total += price;
    }

    return total;
  } catch (error) {
    return -1;
  }
}
