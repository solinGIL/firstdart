import 'package:firstdart/12_04/wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand _wand;

  Wizard({
    required String name,
    required int hp,
    required int mp,
    required Wand wand,
  }) : _name = name,
        _hp = hp,
        _mp = mp,
        _wand = wand;

  String get name => _name;
  int get hp => _hp;
  int get mp => _mp;
  Wand get wand => _wand;

  // 마법사의 이름
  set wizardName(String value) {
    if (value.length < 3) {
      print('네임$value');
      throw Exception('이름이 3글자 이상이어야 합니다.');
    }
    _name = value;
  }

  // 지팡이의 이름
  set wandName(String value) {
    if (value.length < 3) {
      print('완드네임$value');
      throw Exception('지팡이의 이름이 3글자 이상이어야 합니다.');
    }

    _wand.name = value;
  }

  // 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
  set wandPower(double value) {
    if (value < 0.5) {
      throw Exception('마력이 0.5 이하입니다.');
    }

    if (value > 100.0) {
      throw Exception('마력이 100.0 이상입니다.');
    }

    _wand.power = value;
  }

  // 지팡이가 없을 때
  set haveWand(int value) {
    // 불린값으로 바꿔주기
  }

  // HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)
  set wizardHp(int value) {
    if (value < -1) _hp = 0;
    print('음수이므로 0으로 변경됩니다.');
  }
}

main() {
  var wizard = Wizard(
    name: '오름캠프마법사',
    hp: 50,
    mp: 50,
    wand: Wand(name: '나무 지팡이', power: 10.0),
  );

  wizard.wizardName = '오름';
  // wizard.wandName = '나무';
  // wizard.wandPower = 100.5;
  //wizard.haveWand = 0;
  //wizard.wizardHp = -1;
}
//완드는 완드껄로 해서 위자드는 완성된 완드 받아서 사용
