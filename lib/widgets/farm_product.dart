

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase2/Pages/home.dart';
import 'package:flutter/material.dart';

class FarmProduct extends StatefulWidget {
  const FarmProduct(
      {Key? key,
      required this.imageItem,
      required this.productName,
      required this.itemPrice,
      required this.farmNumber,
      required this.location})
      : super(key: key);

  final String imageItem;
  final String productName;
  final String itemPrice;
  final String farmNumber;
  final String location;

  @override
  State<FarmProduct> createState() => _FarmProductState();
}

class _FarmProductState extends State<FarmProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      height: 130,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 220, 237, 227),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      widget.imageItem,
                    ),
                    scale: 1)),
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            child: Column(children: [
              Text(
                widget.productName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 20,
                  width: 80,
                  child: Text(
                    widget.itemPrice,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green)),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Buy",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                    
              
                    },
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.orange),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 5,
                          bottom: 4,
                        ),
                        child: Icon(
                          Icons.add_circle_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.call,
                    size: 12,
                  ),
                  Text(
                    widget.farmNumber,
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Icon(
                    Icons.location_on,
                    size: 12,
                  ),
                  Text(widget.location,
                      style: TextStyle(color: Colors.black54, fontSize: 15)),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }








}


