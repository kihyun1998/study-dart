import 'package:class1/class1.dart' as class1;

// [정리] class
// class 안에는 var를 사용할 수 없음
// 모든 연산자는 명시적으로 선언해줘야한다.
class Player {
  String name = 'park';
  final int power = 100;

  // this를 안써도 된다.
  // 함수에 class에 선언된 같은 이름의 변수가 없다면 this를 사용하지 않는 것을 추천함
  void sayHi() {
    print("Hi ! I'm $name");
  }
}

void main() {
  var player = Player();
  print(player.name);

  // class의 값을 바꾸면 바뀐다.
  // 그러나 final을 사용한 연산자는 바꿀 수 없다.
  player.name = 'kim';
  print(player.name);

  player.sayHi();
}
