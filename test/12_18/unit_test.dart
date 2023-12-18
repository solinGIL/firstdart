import 'package:firstdart/12_18/unit_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Bank class test', () {
    final bank = Bank('홍길동', '서울시 어쩌구 저쩌구', '010-1111-2222');
    final bankJson = bank.toJson();

    expect(bankJson['name'], '홍길동');
    expect(bankJson['address'], '서울시 어쩌구 저쩌구');
    expect(bankJson['phone'], '010-1111-2222');

    final bankFromJson = Bank.fromJson(bankJson);

    expect(bankFromJson.name, '홍길동');
    expect(bankFromJson.address, '서울시 어쩌구 저쩌구');
    expect(bankFromJson.phone, '010-1111-2222');
  });


}
