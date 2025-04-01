import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
try{
    String data = await fetchUserData();
    String id = json.decode(data)["id"];
    String orders = await fetchUserOrders(id);
    List<dynamic>? ordersList = json.decode(orders);
    if (ordersList == null) {
      return -1;
    }
    double total = 0.0;
    for (String order in ordersList) {
        String price = await fetchProductPrice(order);
        double prices = (json.decode(price) as num).toDouble(); 
        total += prices;
    }
    return total;
  } catch (e) {

    return -1;
  }
}
