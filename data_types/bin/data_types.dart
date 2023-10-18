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
  var nums = [
    1,
    2,
    3,
    4,
  ];
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

  // [정리] 3. string interpolation
  // string에 변수 추가
  var name2 = 'park';
  var hello = "Hello, My name is $name";

  // 대괄호를 사용해서 연산도 할 수 있음
  var age2 = 20;
  var hello2 = "Hello, My name is $name and I'm ${age + 4}";

  // [정리] 4. collection for
  // 배열에 for문으로 값 추가할 수 있는 기능
  var arr = ['a', 'b'];
  var newArr = [
    'c',
    'd',
    'e',
    for (var old in arr) "old $old",
  ];

  // [정리] 5. Maps
  // 키는 String이고 값은 Object다.
  var player = {
    'name': 'park',
    'power': 10.1,
  };

  // 밑에 처럼 명시적으로 선언 가능하다
  Map<List<int>, bool> player2 = {
    [1, 2, 3]: true,
    [4, 5, 6]: false,
  };

  // 이런식으로 많이 사용한다.
  List<Map<String, Object>> player3 = [
    {'name': 'a', 'power': 1.1},
    {'name': 'b', 'power': 2.2},
  ];

  // [정리] 6. Sets
  // Set은 요소 중복이 없다. 유니크하다고 할 수 있다.
  // python의 tuple과 같다.
  // Set은 아래처럼 묵시적으로 사용할 수 있다.
  var numbers = {1, 2, 3, 4};

  // 명시적으로 사용한다면 아래처럼 가능
  Set<int> numbers2 = {6, 7, 8, 9};
}
