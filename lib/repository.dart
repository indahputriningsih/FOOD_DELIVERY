import 'dart:convert';
import 'package:food_delivery/model.dart';
import 'package:http/http.dart' as http;

class Repository {
  final _baseUrl = 'https://6486f8b3beba6297278f95f8.mockapi.io/food/food';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Brand> brand = it.map((e) => Brand.fromJson(e)).toList();
        return brand;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
