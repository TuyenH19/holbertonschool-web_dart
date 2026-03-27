import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final userId = json.decode(userData)['id'];

    final userOrdersJson = await fetchUserOrders(userId);
    final userOrders = json.decode(userOrdersJson);

    double total = 0;
    for (int i = 0; i < userOrders.length; i++) {
      final priceString  = await fetchProductPrice(userOrders[i]);
      final price = (json.decode(priceString) as num).toDouble();
      total += price;
    }
    return total;
  } catch (e) {
    return -1;
  }
}
