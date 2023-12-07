class Book {
  String title;
  DateTime publishDate;
  String comment;

  Book({required this.title, required this.publishDate, required this.comment});

  // 같은 제목과 출간일을 가진 책은 같은 책으로 간주
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Book &&
        other.title == title &&
        other.publishDate == publishDate;
  }

  // 책을 복사하는 메서드: 다른 코멘트나 제목, 출간일로 복사본을 만들 수 있음
  Book copyWith({
    String? newTitle,
    DateTime? newPublishDate,
    String? newComment,
  }) {
    return Book(
      title: newTitle ?? title,
      publishDate: newPublishDate ?? publishDate,
      comment: newComment ?? comment,
    );
  }
}

void main() {
  var book1 = Book(
      title: '해리포터', publishDate: DateTime(2023, 12, 07), comment: '마법사가 나와요');
  var book2 = Book(
      title: '반지의 제왕',
      publishDate: DateTime(2023, 12, 08),
      comment: '반지를 갖는자 왕이 될 것');

  // 책 목록 생성
  var books = [book1, book2];

  // 출간일로 정렬하기
  books.sort((a, b) => a.publishDate.compareTo(b.publishDate));

  // 정렬된 목록 출력
  for (var book in books) {
    print('Book: ${book.title}, Date: ${book.publishDate}');
  }
}
