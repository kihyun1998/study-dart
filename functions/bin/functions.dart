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

void main() {
  sayHi("park");
  print(sayHi2('park2'));
  print(sayHi2('park3'));
}
