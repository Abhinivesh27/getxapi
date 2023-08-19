import 'dart:developer';
import 'dart:io';

import 'package:get/get.dart';
import 'package:getapi/model/category.dart';
import 'package:getapi/model/product.dart';
import 'package:getapi/service/consts.dart';
import 'package:http/http.dart' as http;
import '../model/sub_category.dart' as subCategory;

class ApiService extends GetxController {
  String baseUrl = "http://154.26.130.251:302";
  List<Datum> categories = [];
  List<subCategory.Datum> subCategories = [];
  List<Result> products = [];

  List<Result> allProducts = [];

  int skip = 0;

  void getAllCategories() async {
    try {
      var response = await http.get(
        Uri.parse('$baseUrl/Category/GetAll?OrganizationId=1'),
      );

      var data = CategoryModel.fromRawJson(response.body.toString());

      categories = data.data!;
      update();
      getAllProducts();
    } catch (e) {
      log(e.toString());
    }
  }

  void getSubCategories(String code) async {
    subCategories.clear();
    try {
      var response = await http.get(Uri.parse(
          '$baseUrl /SubCategory/GetbyCategoryCode?OrganizationId=1&CategoryCode=$code'));

      var data =
          subCategory.SubCategoryModel.fromRawJson(response.body.toString());

      subCategories = data.data!;

      update();

      log(subCategories.length.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  void getProducts(String code) async {
    products.clear();
    try {
      var response = await http.get(Uri.parse(
          '$baseUrl /Product/GetAllWithImage?OrganizationId=1&SubCategory=$code'));

      var data = ProductModel.fromRawJson(response.body);

      products = data.result!;

      update();

      log(products.length.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  void getAllProducts() async {
    
    categories.skip(skip).take(10).forEach(
      (value) async {
        var response = await http.get(Uri.parse(
            '$baseUrl /Product/GetAllWithImage?OrganizationId=1&Category=${value.code}'));
        var data = ProductModel.fromRawJson(response.body);

        data.result!.forEach(
          (value) {
            allProducts.add(value);
            update();
          },
        );
      },
    );
    skip = skip + 10;
    update();
  }
}
