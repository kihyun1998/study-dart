import 'package:enums/enums.dart' as enums;

// enum
// enum을 사용하기 위해서는 enum을 붙이면 된다.
// 열거형 자료형은 오타를 줄일 수 있도록 도와준다.

enum Team { red, blue, white, black }

enum Power { Low, Middle, High }

class Player {
  String name;
  Enum power, team; //enum으로 바꿔줌

  Player({required this.name, required this.power, required this.team});

  void who() {
    print("This is $name in $team");
  }
}

void main() {
  var park = Player(name: 'park', power: Power.Low, team: Team.black);
  var kim = park
    ..name = 'kim'
    ..power = Power.High
    ..team = Team.white;
}
