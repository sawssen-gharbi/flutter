import 'package:flutter/material.dart';
import 'package:myapp/game.dart';
import 'package:myapp/arguments/game_argument.dart';
import 'game_details.dart';

class Cell extends StatelessWidget {
  //var
  final Game mGame;

  const Cell(this.mGame, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: () 
       {
              Navigator.pushNamed(context, DetailsScreen.routeName,
            arguments: GameArgument(mGame));


      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "Assets/${mGame.image}",
                width: 240,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mGame.title,
                      style: const TextStyle(color: Colors.black),
                    ),
                    Text(
                      "${mGame.price.floor().toString()} TND",
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
