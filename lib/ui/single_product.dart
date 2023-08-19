import 'package:flutter/material.dart';
import 'package:getapi/model/product.dart';

class SingleProduct extends StatefulWidget {
  final Result product;
  const SingleProduct({super.key, required this.product});

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.productName.toString()),
        
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 200,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(widget.product.productImagePath.toString())
                  ),
                ),
              ),

              SizedBox(height: 20),
             Text(
                widget.product.productName.toString(),style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
             ),
              textAlign: TextAlign.start, 
            ),
            Text(
                "${widget.product.pcsPrice} Rs",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
             ),
              textAlign: TextAlign.start, 
            ),
            Text(
                "${widget.product.brand}",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
             ),
              textAlign: TextAlign.start, 
            ),

            Text(
                widget.product.isStock ?? false ? "Available in Stock" : "Out of Stock" ,style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
             ),
              textAlign: TextAlign.start, 
            ),
          ],
        ),
      ),
    );
  }
}