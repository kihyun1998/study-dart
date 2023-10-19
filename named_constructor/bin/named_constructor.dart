import 'package:named_constructor/named_constructor.dart' as named_constructor;

// [정리] 3. named constructors
// 다양한 생성자를 가질 수 있다

class Player {
  final String name;
  int power, age;
  String team;

  // 베이직한 생성자
  Player(
      {required this.name,
      required this.power,
      required this.team,
      required this.age}) {
    print("Hi I'm $name");
  }

  // 조금 특별한 생성자
  // : 를 사용해서 사용할 수 있다.
  Player.createBlackPlayer({required String name, required int age})
      : this.age = age,
        this.name = name,
        this.team = 'black',
        this.power = 0;

  Player.createWhitePlayer({required String name, required int age})
      : this.age = age,
        this.name = name,
        this.team = 'white',
        this.power = 0;

  void who() {
    print("This is $name and $age years old");
  }
}

void main() {
  var player1 = Player.createBlackPlayer(name: 'park', age: 20);
  var player2 = Player.createWhitePlayer(name: 'kim', age: 30);
  player1.who();
  player2.who();
}
