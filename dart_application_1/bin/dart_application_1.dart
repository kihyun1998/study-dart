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
}
