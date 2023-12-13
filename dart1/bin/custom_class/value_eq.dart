class A {
  final int value;

  // final로 선언된 인스턴스가 있어야 const로 생성자 만들 수 있음.
  const A(this.value);

  // ==라는 operator를 오버라이딩한 것임.

  @override
  bool operator ==(Object other) {
    // identical은 참조 비교
    // 그러나 값 비교를 위해서 ||를 추가함
    return identical(this, other) ||
        // this.runtimeType == other.runtimeType이다.
        // this.value와 other.value이다.
        // 둘이 메모리 주소는 달라도 값이 다르면 true를 반환할 것이다.
        other is A && runtimeType == other.runtimeType && value == other.value;
  }

  // 불변객체로 선언하면 이거 안해도 된다.
  @override
  int get hashCode => value.hashCode;

  // toString함수를 오버라이딩 해서 문자열로 출력되도록 한 것
  @override
  String toString() {
    return "A($value)";
  }
}

void main() {
  print(A(1) == A(1));
  print(A(1));
}
