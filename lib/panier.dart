import 'package:flutter/material.dart';
import 'package:myapp/cell.dart';
import 'package:myapp/cellPanier.dart';
import 'package:myapp/game.dart';

class Panier extends StatefulWidget {
  const Panier({super.key});

  @override
  State<Panier> createState() => _Panier();
}

class _Panier extends State<Panier> {
  //var
  final List<Game> games = [
    Game("dmc5.jpg", "Devil May Cry 5", 200),
    Game("fifa.jpg", "Fifa 22", 200),
    Game("nfs.jpg", "Need For Speed", 100),
  ];

  //actions

  //life cycle
  @override
  void initState() {
    super.initState();
  }

  //build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Total : 500 TND',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.red,
            ),
            Column(
              children: [
                CellPanier("assets/dmc5.jpg", 200),
                CellPanier("assets/minecraft.jpg", 200),
                CellPanier("assets/fifa.jpg", 100),
              ],
            )
          ],
        ),
      ),
    );
  }
}
