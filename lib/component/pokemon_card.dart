import 'package:flutter/material.dart';
import 'package:pokedex/entity/Pokemon.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon _pokemon;

  PokemonCard(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          children: <Widget>[
            FadeInImage.assetNetwork(placeholder: 'images/loader.gif', image: _pokemon.img),
            Text(_pokemon.name),
          ],
        ),
    );
  }

}
