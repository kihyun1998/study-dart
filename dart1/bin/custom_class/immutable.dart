class A {
  final int value1;
  final int value2;

  A({
    required this.value1,
    required this.value2,
  });

  A copyWith({
    int? value1,
    int? value2,
  }) {
    return A(
      value1: value1 ?? this.value1,
      value2: value2 ?? this.value2,
    );
  }

  @override
  String toString() {
    return "A(value1:$value1, value2:$value2)";
  }
}

void main() {
  A a = A(value1: 1, value2: 1);
  A b = a; // 얕은 복사

  // a.value1 = 2;
  a = a.copyWith(value1: 2);
  print(a);
  print(b);
}
