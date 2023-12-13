// Getter & Setter 그리고 캡슐화 예제
// document.dart를 잘 살펴보자

import 'document.dart';

void main() {
  final doc = Document("1");

  // 조회
  String content = doc.content;
  print(doc.statistic);

  // 수정
  doc.content = "2";
  print(doc.statistic);
}
