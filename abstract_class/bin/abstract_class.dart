import 'package:abstract_class/abstract_class.dart' as abstract_class;

// 추상클래스

// 추상클래스로는 객체를 생성할 수 없음
// 메소드 모음집 같은거임

// 메소드 정의는 이런식으로만 하면 된다.
// 메소드 타입과 이름만 정의할 수 있다.
// 해당 추상 클래스를 상속받은 클래스들은 추상 클래스에 있는 메소드의 동작을 구현해야하는 의무가 있다.
// 왜 사용하는지 이해가 안갈지 몰라도 코드가 길어지면 유용하게 사용할 수 있다.
abstract class Human {
  void walk();
}

enum Team { red, blue, white, black }

enum Power { Low, Middle, High }

// 추상 클래스를 상속받으려면 extends를 사용하면 된다.
class Player extends Human {
  String name;
  Enum power, team; //enum으로 바꿔줌

  Player({required this.name, required this.power, required this.team});

  void who() {
    print("This is $name in $team");
  }

  void walk() {
    print("I'm walking");
  }
}

class Coach extends Human {
  void walk() {
    print("coach is walking");
  }
}

void main() {
  var park = Player(name: 'park', power: Power.Low, team: Team.black);
  var kim = park
    ..name = 'kim'
    ..power = Power.High
    ..team = Team.white;
}
