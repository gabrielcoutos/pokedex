import 'package:flutter/material.dart';
import 'package:pokedex/entity/Pokemon.dart';
import 'package:pokedex/util/Utils.dart';

class InfoPokemonScreen extends StatelessWidget {
  final Pokemon _pokemon;

  InfoPokemonScreen(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pokemon.name),
        elevation: 0.0,
      ),
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: <Widget>[

          Positioned(
            width: MediaQuery.of(context).size.width - 20,
            height: MediaQuery.of(context).size.height / 1.5,
            top: MediaQuery.of(context).size.height *0.1,
            left: 10.0,
            child: Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 64.0, 0.0, 0.0),
                    child: Text(_pokemon.name,style: TextStyle(fontSize: 20.0),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Altura: ${_pokemon.height}'),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Peso: ${_pokemon.weight}'),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Tipos',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  _getTypes(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Fraco contra',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  _getWeaknesses(),
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Image.network(_pokemon.img,scale: 0.8,)
          ),
        ],
      ),
    );
  }

  Widget _getTypes(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _pokemon.type.map(_getType).toList(),
    );
  }

  Widget _getType(String type){
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(type),
      ),
      color: Utils.getColorType(type),
    );
  }

  Widget _getWeaknesses() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _pokemon.weaknesses.map(_getWeakness).toList(),
    );
  }

  Widget _getWeakness(String weakness){
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(weakness),
      ),
      color: Colors.redAccent,
    );
  }
}


