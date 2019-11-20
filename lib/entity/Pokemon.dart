class Pokemon {
  int id;
  String num;
  String name;
  String img;
  List<String> type;
  String height;
  String weight;
  String candy;
  int candyCount;
  String egg;
  String spawnChance;
  String avgSpawns;
  String spawnTime;
  List<double> multipliers;
  List<String> weaknesses;
  List<NextEvolution> nextEvolution;

  Pokemon({this.id, this.num, this.name, this.img, this.type, this.height,
      this.weight, this.candy, this.candyCount, this.egg, this.spawnChance,
    this.avgSpawns, this.spawnTime, this.multipliers, this.weaknesses, this.nextEvolution});

  static Pokemon fromJson(Map<String,dynamic> json){
    List<dynamic> evolutions = json['next_evolution'];
    List<NextEvolution> nextEvolution = List<NextEvolution>();

    if (evolutions != null) {
      evolutions.forEach((evolution) =>
          nextEvolution.add(NextEvolution.fromJson(evolution)));
    }


    return Pokemon(
        id: json['id'],
        num: json['num'],
        name: json['name'],
        img: json['img'],
        type: json['type'].cast<String>(),
        height: json['height'],
        weight: json['weight'],
        candy: json['candy'],
        candyCount: json['candy_count'],
        egg: json['egg'],
        spawnChance: json['spawn_chance'].toString(),
        avgSpawns: json['avg_spawns'].toString(),
        spawnTime: json['spawn_time'],
        weaknesses: json['weaknesses'].cast<String>(),
        nextEvolution: nextEvolution
    );
  }

  static List<Pokemon> fromJsonList(Map<String,dynamic> json){
    List<Pokemon> pokedex;
    if(json['pokemon'] != null){
      pokedex = List<Pokemon>();
      List<dynamic> pokes = json['pokemon'];
      pokes.forEach((pokemon) => pokedex.add(fromJson(pokemon)));
    }
    return pokedex;
  }

  void printPokemon(){
    print(' id: $id\n'
        'num: $num\n'
        'name: $name\n'
        'img: $img');
  }


}

class NextEvolution {

  String num;
  String name;

  NextEvolution({this.num, this.name});

  static NextEvolution fromJson(Map<String, dynamic> json) {
    return NextEvolution(
        name: json['name'],
        num: json['num']
    );
  }


}