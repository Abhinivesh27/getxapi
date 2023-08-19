import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getapi/service/apiservice.dart';
import 'package:getapi/ui/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final apiController = Get.put(ApiService());
  @override
  void initState() {
    super.initState();
    apiController.getAllCategories();
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abhinivesh S',
      home: HomePage()
    );
  }
}