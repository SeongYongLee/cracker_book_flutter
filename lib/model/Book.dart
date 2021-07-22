import 'package:cracker_book_flutter/model/Study.dart';

class Book {
  String title;
  String image;
  String color;
  int like;
  List<Study> study;

  Book(this.title, this.image, this.color, this.like, this.study);
}

final bookList = [
  Book('생각의 쓰임', 'assets/book/1.jpg', '#FCF587', 25, []),
  Book('엘라스틱서치 실무 가이드...', 'assets/book/2.jpg', '#F9D1B4', 100, []),
  Book('눈치껏 못 배웁니다, 일센스...', 'assets/book/3.jpg', '#09A969', 12, []),
];