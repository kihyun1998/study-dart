import 'package:inheritance/inheritance.dart' as inheritance;

// [정리] 상속
class Human {
  final String name;

  Human({required this.name});

  void hi() {
    print("hi Im $name");
  }
}

enum Class {
  one,
  two,
}

class Student extends Human {
  final Class class_;

  // Human에서 name을 상속받아서 생성자(Student)로 받아서 생성자(Human)로 전달하는 코드입니다.
  // super는 부모 클래스를 의미하는 거다.
  Student({
    required this.class_,
    required String name,
  }) : super(name: name);

  // super를 활용한 override 예시
  @override
  void hi() {
    super.hi();
    print("And I study in $class_");
  }
}

void main() {
  var student1 = Student(
    class_: Class.one,
    name: "park",
  );
  student1.hi();
}
