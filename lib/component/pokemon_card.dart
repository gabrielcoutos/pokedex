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
      color: verifyType(),
    );
  }

  Color verifyType(){
    Color color = Colors.white;
    if(_pokemon.type.length> 0){
      switch (_pokemon.type[0].trim().toLowerCase()){
        case 'water':
          color = Colors.blue.withOpacity(0.4);
          break;
        case 'fire':
          color = Colors.redAccent.withOpacity(0.4);
          break;
        case 'electric':
          color = Colors.yellowAccent.withOpacity(0.4);
          break;
        case 'grass':
          color = Colors.greenAccent.withOpacity(0.4);
          break;
        case 'psychic':
          color = Colors.deepPurpleAccent.withOpacity(0.4);
          break;
        case 'bug':
          color = Colors.green[800].withOpacity(0.4);
          break;
        case 'rock':
          color = Colors.grey[600].withOpacity(0.4);
          break;
        case 'ground':
          color = Colors.brown.withOpacity(0.4);
          break;
        case 'fighting':
          color = Colors.brown[200].withOpacity(0.4);
          break;
        case 'dark':
          color = Colors.black45;
          break;
        default:
          color = Colors.white;
          break;
      }
    }
    return color;
  }

}
