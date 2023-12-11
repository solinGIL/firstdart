import 'dart:io';

void copy(String source, String target) {
  File(source).copySync(target);
}

main(List<String> arguments) {
  String source = r'C:\Users\user\Desktop\modu\firstdart\company.txt';
  String target = r'C:\Users\user\Desktop\modu\firstdart\copied_company.txt';

  try {
    copy(source, target);
    print('파일 복사 완료: $source -> $target');
  } catch (e) {
    print('파일 복사 중 에러 발생: $e');
  }
}
