import 'package:flutter/material.dart';
class CellPanier extends StatelessWidget {

  final int price;
  final String image;

  const CellPanier(this.image, this.price);

  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.restore_from_trash_rounded, size: 50,),
              Image.asset(image, height: 50,),
              Text(price.toString() + ' TND', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}