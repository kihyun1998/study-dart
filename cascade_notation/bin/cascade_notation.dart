import 'package:cascade_notation/cascade_notation.dart' as cascade_notation;

class Player {
  String name;
  int power;
  String team;

  Player({required this.name, required this.power, required this.team});

  void who() {
    print("This is $name in $team");
  }
}

// .. 연산자라는거임
// 전에 있던 변수를 가리킴
// ..을 사용해서 함수 호출 뿐만 아니라 값도 변경할 수 있음

void main() {
  var park = Player(name: 'park', power: 100, team: 'black');
  var kim = park
    ..who()
    ..name = 'kim'
    ..power = 1000
    ..team = "white";

  park.who();
  kim.who();

// print 결과
// This is park in black
// This is kim in white
// This is kim in white
// Exited.
}
