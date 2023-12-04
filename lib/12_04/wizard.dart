import 'package:firstdart/12_04/wand.dart';

class Wizard {
  String name;
  int hp;
  int mp;
  Wand? wand;
  int checkWizardWand;

  Wizard(
      {required this.name,
      required this.hp,
      required this.mp,
      Wand? wand,
      required this.checkWizardWand});

  double get wandPower => wand?.power ?? 0.0;

  // 마법사의 이름
  set wizardName(String? value) {
    if (value == null) {
      throw Exception('이름이 null 값 입니다.');
    }

    if (value.length < 3) {
      throw Exception('이름이 3글자 이상이어야 합니다.');
    }
    this.name = value;
  }

  // 지팡이의 이름
  set wandName(String? value) {
    if (value == null) {
      throw Exception('지팡이의 이름이 null입니다.');
    }

    if (value.length < 3) {
      throw Exception('지팡이의 이름이 3글자 이상이어야 합니다.');
    }

    wand?.name = value;
  }

  // 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
  set wandPower(double value) {
    if (value.toDouble() < 0.5) {
      throw Exception('마력이 0.5 이하입니다.');
    }

    if (value.toDouble() > 100.0) {
      throw Exception('마력이 100.0 이상입니다.');
    }

    wand?.power = value;
  }

  // 지팡이가 없을 때
  set haveWand(int value) {
    if (value == 0) {
      throw Exception('마법사의 지팡이가 없습니다.');
    }

    checkWizardWand = value;
  }

  // HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)
  set wizardHp(int value) {
    if (value < -1) hp = 0;
    print('음수이므로 0으로 변경됩니다.');
  }
}

main() {
  var wizard = Wizard(
      name: '오름캠프마법사',
      hp: 50,
      mp: 50,
      wand: Wand(name: '나무 지팡이', power: 10.0, checkWand: 1),
      checkWizardWand: 1);

  // wizard.wizardName = null;
  // wizard.wandName = '나무';
  // wizard.wandPower = 100.5;
  // wizard.haveWand = 0;
  // wizard.wizardHp = -1;
}
