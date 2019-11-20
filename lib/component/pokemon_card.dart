import 'package:flutter/material.dart';
import 'package:pokedex/entity/Pokemon.dart';
import 'package:pokedex/screen/info.dart';
import 'package:pokedex/util/Utils.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon _pokemon;

  PokemonCard(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
          child: Column(
            children: <Widget>[
              Hero(
                child: FadeInImage.assetNetwork(
                    placeholder: 'images/loader.gif', image: _pokemon.img),
                tag: 'dash${_pokemon.id}',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _pokemon.name, style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        color: verifyType(),
      ),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => InfoPokemonScreen(_pokemon))),
    );
  }

  Color verifyType(){
    Color color = Colors.white;
    if(_pokemon.type.length> 0){
      return Utils.getColorType(_pokemon.type[0]);
    }
    return color;
  }

}
