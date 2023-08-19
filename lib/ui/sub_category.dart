import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getapi/ui/all_products.dart';
import 'package:getapi/ui/single_product.dart';

import '../service/apiservice.dart';

class SubCategoryPage extends StatefulWidget {
  final String categoryCode;
  final String categoryName;
  const SubCategoryPage({super.key, required this.categoryCode, required this.categoryName});

  @override
  State<SubCategoryPage> createState() => _SubCategoryPageState();
}

class _SubCategoryPageState extends State<SubCategoryPage> {
  final apiController = Get.put(ApiService());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiController.getSubCategories(widget.categoryCode);
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
                    itemCount: controller.subCategories.length,
                    itemBuilder: (context, index) {
                      return Container(
                       width: MediaQuery.of(context).size.width,
                       margin: const EdgeInsets.only(top: 10, bottom: 10),
                       alignment: Alignment.center,
                        child: Material(
                          elevation: 20,
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AllProductsPage(categoryCode: controller.subCategories[index].code.toString(), categoryName: controller.subCategories[index].name.toString())));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                              ),
                             child:  Text(controller.subCategories[index].name ?? "loading..")
                            ),
                          ),
                        )
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