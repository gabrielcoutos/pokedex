import 'dart:convert';

import 'package:pokedex/entity/Pokemon.dart';
import 'package:http/http.dart' as http;

class Requester{
  
  Future<List<Pokemon>> fetchPost () async{
    http.Response response = await http.get('https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');

    if(response.statusCode == 200){
      return Pokemon.fromJsonList(json.decode(response.body));
    }else{
      throw Exception('Erro ao carregar pokedex');
    }
  }

}