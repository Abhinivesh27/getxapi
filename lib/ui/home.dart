import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getapi/service/apiservice.dart';
import 'package:getapi/ui/list_of_products.dart';
import 'package:getapi/ui/sub_category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text("GetX Api"),
        title: GetBuilder<ApiService>(
          builder: (controller) {
            return Text("Total products ${controller.allProducts.length}");
          },
        ),

        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewAllProducts(),
                ),
              );
            },
            child: Text(
              'View All',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Browse our Categories",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GetBuilder<ApiService>(
              builder: (controller) {
                return Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: controller.categories.length,
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
                                final apicontroller = Get.put(ApiService());

                                //apicontroller.getSubCategories(controller.categories[index].code.toString());
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SubCategoryPage(
                                      categoryCode: controller
                                          .categories[index].code
                                          .toString(),
                                      categoryName: controller
                                          .categories[index].name
                                          .toString(),
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                      controller.categories[index].name ??
                                          "loading..")),
                            ),
                          ));
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
