import 'package:data_types/data_types.dart' as data_types;

void main() {

  // [정리] 1. 기본 데이터 타입
  
  // dart에서 데이터 타입은 다 클래스임
  // 그래서 라이브러리를 import 하지 않아도 메소드 사용 가능

  String name = "park";
  bool check = true;
  int age = 19;
  double tall = 170.1;

  // int와 double은 num이라는 클래스에 상속받은 데이터 타입임
  num x = 10;
  x = 1.1;

  // 그래서 위와 같은 동작 가능
}
