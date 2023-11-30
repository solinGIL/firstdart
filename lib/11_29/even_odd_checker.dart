main() {
  // 미션 1: 30과 15
  checkEvenOdd(30, 15);

  // 미션 2: 12와 40
  checkEvenOdd(12, 40);
}

void checkEvenOdd(int n, int m) {
  if ((n % 2 == 0 && m % 2 != 0) || (n % 2 != 0 && m % 2 == 0)) {
    print('YES');
  } else {
    print('NO');
  }
}

