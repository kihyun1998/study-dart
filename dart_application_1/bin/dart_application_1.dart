import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {

  // [정리] 1. var 
  // 묵시적
  // 함수나 메소드 내부에서 지역 변수를 선언할 때 사용
  var implied = "묵시적";
  implied = "implied";

  //명시적
  // class에서 변수나 속성을 선언할 때 사용
  String explicit = "명시적";
  explicit = "explicit";

  // 그래서 지금과 같은 상황에서는 var를 사용하는걸 권장한다.

  // [정리] 2. dynamic
  // 묵시적 dynamic
  var value;
  value = "abc";
  value = 123;
  value = true;

  // 명시적으로도 사용할 수 있음
  dynamic dnm;
  dnm = "qwerty";
  dnm = 999;
  dnm = false;

  // [정리] 3. nullable variables
  String? nullSafe = "null";
  nullSafe = null;

  // like > if(nullSafe != null){ nullsafe.isNotEmpty }
  nullSafe?.isNotEmpty;
  // 자바스크립트처럼 ?를 사용하면 null 참조 가능

  // [정리] 4. final
  // 상수 선언 하는 방법
  // 자바스크립트의 const와 같다.
  final fn = "can only be set once";

  final String fn2 = "명시적 선언도 가능하다.";
  // 명시적 선언도 가능함

  // [정리] 5. late
  // late는 초기 데이터 없이 변수를 명시적으로 선언할 수 있도록 해준다.
  // 문서에서 late에 대한 소개 : "late키워드는 값의 초기화를 뒤로 미루지만, 개발자가 null을 실수로 사용하는것을 막아준다."

  late final String str;
  str="aaa";

  // 정리하자면 nullable과 헷갈리지 않기 위해 사용 그리고 API 응답 받아오는데 많이 사용한다니 알고있자

  // [정리] 6. const
  // 다트에도 const가 있지만 자바스크립트와는 다름
  // const > compile time constant를 만들어줌
  // compile time constant > compile-time에 값을 알고 있어야 함.
  // final보다 엄격한 상수라고 생각하면 된다.
  
  // 이건 가능
  const APIKey = "asdkl1ltl1bajf092j1";
  // 밑은 불가능 final쓰세요
  const cant = "어떤 함수의 return값은 const로 사용할 수 없음 ex) const sum = add(1,2)";
  
  // 정리하자면 
  // final > 그냥 상수 
  // const > 엄격한 상수 (무조건 하드코딩)
}
