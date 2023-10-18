import 'package:functions/functions.dart' as functions;

// [정리] 1. 함수 선언

// void 함수는 리턴이 없음
void sayHi(String name) {
  print("Hi $name");
}

// String 함수는 String을 return함
String sayHi2(String name) {
  return "Hi $name";
}

// fat arrow syntax를 사용할 수도 있다.
String sayHi3(String name) => "Hi $name";
//================================================

// [정리] 2. named parameters
// named parameter를 지원하지 않는 함수
String sayHi4(String name, int age, String country) {
  return "Hi, $name, you are $age years and leave in $country";
}

// named parameter를 지원하는 함수
// named parameter를 사용하려면 중괄호로 parameter를 묶어주면 된다.
// 그리고 null safety하게 해줘야 하기 때문에 default value를 넣어준다.
String sayHi5({String name = 'kim', int age = 20, String country = 'USA'}) {
  return "Hi, $name, you are $age years and leave in $country";
}

// 그런데 꼭 입력이 필요한 경우가 있을 수 있다.
//그러면 required 수식어를 사용하면 된다.
String sayHi6({String name = 'kim', required int age, String country = 'USA'}) {
  return "Hi, $name, you are $age years and leave in $country";
}

void main() {
  // 정리1 ==============
  sayHi("park");
  print(sayHi2('park2'));
  print(sayHi2('park3'));
  // ====================

  // 정리2 ==============
  // 기존 작성 방식
  print(sayHi4('park', 25, 'Korea'));
  // named parameter 사용한 방식
  print(sayHi5(name: 'park', age: 25, country: 'Korea'));
  print(sayHi5(country: 'Korea'));
  print(sayHi6(age: 50));
  // ====================
}
