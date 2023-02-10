import 'package:firebase2/widgets/product_item.dart';
import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  List<Product> products = [
    Product(
        imageLocation: "cacao.png",
        productName: "Cocoa from Farm",
        description: "20kg | 200 bags",
        price: "GHS 12,500"),
    Product(
        imageLocation: "Carrot.png",
        productName: "Carrot",
        description: "30kg | 200 bags",
        price: "GHS 12,500"),
    Product(
        imageLocation: "onion.png",
        productName: "Onions",
        description: "50kg | 200 bags",
        price: "GHS 12,500"),
    Product(
        imageLocation: "tomato.png",
        productName: "Tomatoes",
        description: "40kg | 200 bags",
        price: "GHS 12,500"),
    Product(
        imageLocation: "yam.png",
        productName: "Yam from Tarkwa",
        description: "70kg | 200 bags",
        price: "GHS 12,500"),
    Product(
        imageLocation: "sugar.jpg",
        productName: "Sugar from Sugarcane",
        description: "30kg | 200 bags",
        price: "GHS 12,500"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:
              products.map((product) => ProductItem(product: product)).toList(),
        ),
      ),
    );
  }
}

class Product {
  final String imageLocation;
  final String productName;
  final String description;
  final String price;

  const Product(
      {required this.imageLocation,
      required this.productName,
      required this.description,
      required this.price});
}
