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

  Pokemon({this.id, this.num, this.name, this.img, this.type, this.height,
      this.weight, this.candy, this.candyCount, this.egg, this.spawnChance,
      this.avgSpawns, this.spawnTime, this.multipliers, this.weaknesses});

  static Pokemon fromJson(Map<String,dynamic> json){

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
      avgSpawns: json['avg_spawns'],
      spawnTime: json['spawn_time'],
      weaknesses: json['weaknesses'].cast<String>(),
    );
  }


}