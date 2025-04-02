import 'dart:convert';
import '4-util.dart';

calculateTotal() async {
  try {
    String data = await fetchUserData();
    String id = json.decode(data)["id"];

    String orders = await fetchUserOrders(id);
    List<dynamic>? ordersList = json.decode(orders); // Handle null case

    if (ordersList == null) {
      return -1; // Return -1 if user has no orders
    }

    double total = 0;
    for (String order in ordersList) {
      String price = await fetchProductPrice(order);
      dynamic decodedPrice = json.decode(price);

      if (decodedPrice == null) {
        return -1; // Return -1 if product price is missing
      }

      double prices = (decodedPrice as num).toDouble();
      total += prices;
    }
    return total;
    } catch (err) {

        return -1;
    }
}