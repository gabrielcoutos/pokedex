import 'package:flutter/material.dart';
import 'package:pokedex/entity/Pokemon.dart';
import 'package:pokedex/http/requester.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blueAccent,
        cardTheme: CardTheme(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          )
        ),
        backgroundColor: Colors.grey[100],
      ),
      home: AllPokemon(),
    );
  }
}

class AllPokemon extends StatefulWidget {


  @override
  _AllPokemonState createState() => _AllPokemonState();
}

class _AllPokemonState extends State<AllPokemon> {
  Future<List<Pokemon>> pokedex;

  @override
  void initState() {
    super.initState();
    Requester requester = Requester();
    pokedex = requester.fetchPost();
    pokedex.then((pokehub) => pokehub.forEach((pokemon) => pokemon.printPokemon()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokedex"),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Card(
              child: Text("teste"),
            ),
            flex: 5,
          ),
          Expanded(
            child: Card(
                child: Text("heuheuheuheuue"),
            ),
            flex: 5,
          ),
        ],
      ),
    );
  }

}



