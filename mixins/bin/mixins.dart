import 'package:mixins/mixins.dart' as mixins;

// [정리] mixins
// mixin을 앞에 붙여야 한다.
// 예전 버전의 dart는 생성자 없는 class를 mixin으로 인식한 것 같은데 이제는 mixin을 class 대신 작성해줘야 한다.
// 생성자가 없는 class다.
// 클래스에 프로퍼티를 추가할 때 사용한다.
// 클래스의 메소드들을 재사용 가능하다는 부분이 장점이다.

// 상속과의 차이점 :
// 상속 : class의 정보들을 받아오는 것 , yes super
// mixin : class의 정보들을 뺐어오는 것, no super

mixin HighScore {
  final String grade = 'A+';
}

mixin AI {
  void sayHi() {
    print("Hi!");
  }
}

enum Class {
  one,
  two,
}

class Student with AI, HighScore {
  final Class class_;

  Student({
    required this.class_,
  });
}

void main() {
  var student1 = Student(
    class_: Class.one,
  );

  print(student1.grade);
  student1.sayHi();
}
