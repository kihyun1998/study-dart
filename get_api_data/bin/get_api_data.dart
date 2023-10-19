import 'package:get_api_data/get_api_data.dart' as get_api_data;

// api 데이터를 받아온다고 가정한 실습

class Player {
  final String name;
  int age;
  String team;

  Player({required this.name, required this.team, required this.age}) {
    print("Hi I'm $name");
  }

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        age = playerJson['age'],
        team = playerJson['team'];

  void who() {
    print("This is $name and $age years old");
  }
}

void main() {
  var apiData = [
    {"name": "park", "team": "black", "age": 10},
    {"name": "kim", "team": "white", "age": 20},
    {"name": "lee", "team": "black", "age": 30},
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.who();
  });
}
