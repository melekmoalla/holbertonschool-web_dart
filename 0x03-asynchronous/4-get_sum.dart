import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userJson = json.decode(userData);
    String userId = userJson['id'];

    String ordersData = await fetchUserOrders(userId);
    List<dynamic> ordersList = json.decode(ordersData) as List<dynamic>;

    double total = 0.0;
    for (var product in ordersList) {
      String priceData = await fetchProductPrice(product);
      dynamic priceValue = json.decode(priceData);
      if (priceValue == null) {
        throw Exception('Price not found for product: $product');
      }
      total += (priceValue as num).toDouble();
    }

    return total;
  } catch (e) {
    return -1.0;
  }
}