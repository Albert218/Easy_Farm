import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase2/widgets/farm_product.dart';

class Product_Item extends StatefulWidget {
  @override
  State<Product_Item> createState() => _Product_ItemState();
}

class _Product_ItemState extends State<Product_Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.0,
        title: Text("productName"),
        centerTitle: true,
      ),
      body:Container(
  child: StreamBuilder(
    stream: FirebaseFirestore.instance.collection('product').snapshots(),
    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
      if (snapshot.hasData ) {
        final price = snapshot.data?.docs.first['price'];
        return Center(
          child: Text(
            price,
            style: TextStyle(fontSize: 20),
          ),
        );
      } else {
        return Container();
      }
    }
  )
)

    );
  }
}
