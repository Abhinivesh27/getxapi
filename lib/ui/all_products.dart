import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getapi/ui/single_product.dart';

import '../service/apiservice.dart';

class AllProductsPage extends StatefulWidget {
  final String categoryCode;
  final String categoryName;
  const AllProductsPage({super.key, required this.categoryCode, required this.categoryName});

  @override
  State<AllProductsPage> createState() => _AllProductsPageState();
}

class _AllProductsPageState extends State<AllProductsPage> {
  final apiController = Get.put(ApiService());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiController.getProducts(widget.categoryCode);
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title:  Text(widget.categoryName),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   alignment: Alignment.centerLeft,
            //   padding: const EdgeInsets.all(20),
            //   child: const Text("Browse our Categories", style: TextStyle(
            //       fontSize: 24,
            //       fontWeight: FontWeight.bold,
            //   ),),
            // ),
            SizedBox(height: 20,),
      
            GetBuilder<ApiService>(
              builder: (controller) {
                return Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          
                        },
                        child: Container(
                         width: MediaQuery.of(context).size.width,
                         margin: const EdgeInsets.only(top: 10, bottom: 10),
                         alignment: Alignment.center,
                          child: Material(
                            elevation: 20,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              alignment: Alignment.center,
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                              ),
                             child:  ListTile(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SingleProduct(product: controller.products[index]))),
                              title: Text(controller.products[index].productName ?? "loading.."),
                              leading: Image.network(controller.products[index].productImagePath.toString()),
                             ),
                            ),
                          )
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}