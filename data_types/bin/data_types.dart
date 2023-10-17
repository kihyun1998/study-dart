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

  // [정리] 2. 리스트

  // List<int> 이런 자료 형이다.
  var nums = [1,2,3,4,];
  nums.add(5);

  // 많은 메소드들이 있음
  // first : 첫번쨰 요소
  // last : 마지막 요소
  // isEmpty : 비어있냐
  // add: 값 추가 .. 등등

  // List는 collection if와 collection for 사용 가능
  var addSome = true;
  var nums2 = [
    1,
    2,
    3,
    if (addSome) 4,
  ];
  // 위처럼 if문 걸어서 true 면 해당 요소 추가하는 거임
}
