import 'package:api_final/View/view_api_pokemon.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Api_Poke());
}

class Api_Poke extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Api_Pokemon',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Api_Pokemon(),
    );
  }
}
