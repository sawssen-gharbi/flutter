import 'package:flutter/material.dart';
import 'package:myapp/game_details.dart';
import 'package:myapp/home_screen.dart';
import 'package:myapp/mdp.dart';
import 'package:myapp/panier.dart';
import 'package:myapp/signin.dart';
import 'package:myapp/signup.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Atelier Flutter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
       // home: Panier(),
      //home: const HomeScreen()
      routes: {
        SignIn.routeName: (context) => const SignIn(),
        mdp.routeName: (context) => const mdp(),
        SignUp.routeName: (context) => const SignUp(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        DetailsScreen.routeName: (context) => DetailsScreen(),
      },
    );
  }
}


        
        
        
    