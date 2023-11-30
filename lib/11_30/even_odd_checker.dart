import 'dart:io';

main() {
  print('숫자를 입력하세요: ');
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print('$number 은(는) 짝수입니다.');
  } else {
    print('$number 은(는) 홀수입니다.');
  }
}
