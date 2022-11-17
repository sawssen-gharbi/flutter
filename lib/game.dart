import 'package:flutter/cupertino.dart';

class Game {
  // att
  late String image;
  late String title;
  late double price;

  //constructor
  //Game(); //constructor par défaut
  Game.image(image);
  Game.two(this.image, this.title);
  Game(this.image, this.title, this.price);
}
