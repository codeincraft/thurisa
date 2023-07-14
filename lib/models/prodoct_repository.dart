import 'dart:convert';

import 'package:thurisa/models/api.dart';
import 'package:thurisa/models/product.dart';

class ProductRepository{
  ApiProvider _apiProvider = ApiProvider();
     
 
   Future<List<Products>> products() async {

    var productResponse = await _apiProvider.get('/products?limit=2&offset=2');
    return List<Products>.from(productResponse.map((it) => Products.fromJson(it)));
  }
  
}