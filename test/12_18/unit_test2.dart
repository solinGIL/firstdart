import 'package:flutter_test/flutter_test.dart';

void main() {
  // 연습문제 2
  bool isEven(int number) {
    return number % 2 == 0;
  }

  test('isEven test', () {
    expect(isEven(4), true);
    expect(isEven(2), true);
    expect(isEven(0), true);
    expect(isEven(-2), true);
    expect(isEven(1), false);
    expect(isEven(-1), false);
  });

  // 연습문제 3
  int findMax(List<int> numbers) {
    return numbers.reduce((curr, next) => curr > next ? curr : next);
  }

  test('findMax test', () {
    expect(findMax([2, 5, 1, 9, 3]), 9);
    expect(findMax([-2, -5, -1, -9, -3]), -1);
    expect(findMax([0]), 0);
    expect(findMax([1, 1, 1, 1, 1]), 1);
  });

  // 연습문제 4
  String reverseString(String str) {
    return str.split('').reversed.join('');
  }

  test('reverseString test', () {
    expect(reverseString("Hello"), "olleH");
    expect(reverseString("Dart"), "traD");
    expect(reverseString("12345"), "54321");
    expect(reverseString(""), "");
  });
}
