import 'package:flutter/material.dart';
import 'package:pokedex/component/pokemon_card.dart';
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
            )),
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
    pokedex.then(
        (pokehub) => pokehub.forEach((pokemon) => pokemon.printPokemon()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokedex"),
      ),
      body: Center(
        child: FutureBuilder<List<Pokemon>>(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                itemCount: snapshot.data.length,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return PokemonCard(snapshot.data[index]);
                },
              );
            }
            return CircularProgressIndicator();
          },
          future: pokedex,
        ),
      ),
    );
  }
}
