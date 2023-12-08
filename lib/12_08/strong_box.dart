enum KeyType {
  padlock, // 1,024회
  button, // 10,000회
  dial, // 30,000회
  finger, // 1,000,000회
}

class StrongBox<T> {
  T? _item;
  KeyType _keyType;
  int _usageCount = 0;
  final _usageLimit;

  StrongBox(this._keyType)
      : _usageLimit = {
          KeyType.padlock: 1024,
          KeyType.button: 10000,
          KeyType.dial: 30000,
          KeyType.finger: 1000000,
        }[_keyType]!;

  void put(T item) {
    _item = item;
  }

  T? get() {
    if (_usageCount >= _usageLimit) {
      return _item;
    } else {
      _usageCount++;
      return null;
    }
  }
}

void main() {
  testKeyType(KeyType.dial);
  testKeyType(KeyType.padlock);
  testKeyType(KeyType.button);
  testKeyType(KeyType.finger);
}

void testKeyType(KeyType type) {
  StrongBox<int> box = StrongBox<int>(type);
  box.put(5000000);

  int limit;
  switch (type) {
    case KeyType.dial:
      limit = 30001;
      break;
    case KeyType.padlock:
      limit = 1025;
      break;
    case KeyType.button:
      limit = 10001;
      break;
    case KeyType.finger:
      limit = 1000001;
      break;
  }

  for (int i = 0; i < limit; i++) {
    var value = box.get();
    if (value != null) {
      print('${type.name} 타입의 열쇠: $i 번째 시도에서 열림, 돈: $value원');
      break;
    }
  }
}
