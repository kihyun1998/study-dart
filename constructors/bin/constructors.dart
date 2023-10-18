import 'package:constructors/constructors.dart' as constructors;

// [정리] 2. constructors

class Player {
  late final String name;
  late int power;

  // dart에서 생성자를 사용하려면 아래와 같이 사용하면된다.
  // 다른 언어들과 비슷한데 차이점은 위를 보면 late를 써야한다.
  // 값이 할당이 되어있지 않기 때문이다.
  Player(String name, int power) {
    this.name = name;
    this.power = power;
    //생성자 함수도 사용 가능
    print("Hi I'm ${this.name}");
  }
}

class Player2 {
  final String name;
  int power;

  // 하지만 아래와 같이 late안쓰고 축약 가능
  Player2(this.name, this.power) {
    //생성자 함수도 사용 가능
    print("Hi I'm $name");
  }
}

void main() {
  var player1 = Player('park', 100);
  var player2 = Player('kim', 60);

  var player3 = Player2('lee', 60);
}
