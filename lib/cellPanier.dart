import 'package:flutter/material.dart';
import 'package:myapp/cell.dart';

import 'game.dart';
class CellPanier extends StatelessWidget {

final Game _game;


  CellPanier(this._game);


  

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
              Image.asset(this._game.image, height: 50,),
              Text(this._game.price.toString() + ' TND', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}