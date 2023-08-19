import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getapi/service/apiservice.dart';
import 'package:getapi/ui/single_product.dart';

class ViewAllProducts extends StatefulWidget {
  const ViewAllProducts({super.key});

  @override
  State<ViewAllProducts> createState() => _ViewAllProductsState();
}

class _ViewAllProductsState extends State<ViewAllProducts> {
  final apiController = Get.put(ApiService());
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(
      () {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          apiController.getAllCategories();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: GetBuilder<ApiService>(
          builder: (controller) {
            return Text(
              "Fetched Products ${controller.allProducts.length}",
            );
          },
        ),
      ),
      body: GetBuilder<ApiService>(
        builder: (controller) {
          return GridView.builder(
            padding: const EdgeInsets.all(2),
            controller: _scrollController,
            itemCount: controller.allProducts.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SingleProduct(
                        product: controller.allProducts[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                        controller.allProducts[index].productImagePath
                            .toString(),
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    controller.allProducts[index].name.toString(),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
