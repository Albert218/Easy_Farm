import 'package:firebase2/Pages/demo_page.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({
    Key? key,
    required  this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      height: 120,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
              child: Image(image: AssetImage("assets/images/${widget.product.imageLocation}")),
            ),
          ),
          SizedBox(width: 24),
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
               widget.product.productName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: List.generate(
                      5,
                      (index) => Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.amber,
                          )),
                ),
                Text(widget.product.description,
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
                Text(widget.product.price,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
