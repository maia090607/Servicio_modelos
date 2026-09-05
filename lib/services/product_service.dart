import 'dart:async';
import 'dart:convert';

import 'package:servios_modelos_app/models/category.dart';
import 'package:servios_modelos_app/models/product.dart';
import 'package:http/http.dart' as http;

class ProductService{
  static const String _baseUrl = 'https://dummyjson.com/';

  Future<List<Product>> getProducts({int limit = 30}) async {

    final url = Uri.parse('$_baseUrl/products?limit=$limit');

    final response = await http.get(url);

    if(response.statusCode !=200){
      throw Exception('Error Procesando Productos ${response.statusCode}');
    }

    final Map<String, dynamic> data = json.decode(response.body);
    final List<dynamic> jsonList = data['products'];

    return jsonList.map((j) => Product.fromJson(j)).toList();

  }

  Future<List<Category>> getCategories() async {
    final url = Uri.parse('$_baseUrl/products/categories');

    final response = await http.get(url);

    if(response.statusCode !=200){
      throw Exception('Error Procesando Categorias ${response.statusCode}');
    }

    final List<dynamic> jsonList = json.decode(response.body);

    return jsonList.map((j) => Category.fromJson(j)).toList();
  }


  Future<List<Product>> getProductByCategory(String slug) async {
    final url = Uri.parse('$_baseUrl/products/category/$slug');

    final response = await http.get(url);

    if(response.statusCode !=200){
      throw Exception('Error Consultando por categoria $slug');
    }

    final Map<String, dynamic> data = json.decode(response.body);

    final List<dynamic> jsonList = data['products'];

    return jsonList.map((j) => Product.fromJson(j)).toList();
  }

  Future<Product> getProductById(int id) async {
    final url = Uri.parse('$_baseUrl/products/$id');

    final response = await http.get(url);

    if(response.statusCode !=200){
      throw Exception('Error Consultando por id $id');
    }

    Map<String, dynamic> jsonProduct = jsonDecode(response.body);

    return Product.fromJson(jsonProduct);
  }

}