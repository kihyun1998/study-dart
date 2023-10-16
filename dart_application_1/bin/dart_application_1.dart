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
}
