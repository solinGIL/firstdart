main() {
  final numString = '10.5';

  int num = parseIntOrDefault(numString, 0);
  print(num);
}

int parseIntOrDefault(String str, int defaultValue) {
  try {
    return int.parse(str);
  } catch (e) {
    return defaultValue;
  }
}
