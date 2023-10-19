import 'package:named_constructor_parameters/named_constructor_parameters.dart'
    as named_constructor_parameters;

// [정리] 2. named constructor parameters

class Player {
  final String? name;
  int? power;
  String? team;
  int? age;

  // 생성자 함수에도 named parameters 형식으로 사용하면 더 좋다.
  // 그리고 위에 변수 형 옆에 ? 붙여서 null 들어오게 해줄 수도 있고
  // required붙여서 필수 값 만들어 줄 수도 있음
  Player({required this.name, this.power, this.team, this.age}) {
    //생성자 함수도 사용 가능
    print("Hi I'm $name");
  }
}

void main() {
  var player1 = Player(
    name: 'lee',
    power: 60,
    team: 'white',
    age: 20,
  );
}
