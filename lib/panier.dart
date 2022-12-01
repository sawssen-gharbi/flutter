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
  /*final List<Game> games = [
    Game("dmc5.jpg", "Devil May Cry 5", 200, quantity: 1),
    Game("fifa.jpg", "Fifa 22", 200,quantity: 1),
    Game("nfs.jpg", "Need For Speed", 100,quantity: 1),
  ];*/

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
      appBar: AppBar(
        title: const Text("Panier"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
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
                CellPanier(Game("dmc5.jpg", "Devil May Cry 5", 200, quantity: 1)),
                CellPanier(Game("fifa.jpg", "Fifa 22", 200,quantity: 1)),
                CellPanier(Game("nfs.jpg", "Need For Speed", 100,quantity: 1))  ,
              ],
            )
          ],
        ),
      ),
    );
  }
}
