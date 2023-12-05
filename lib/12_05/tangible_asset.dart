import 'package:firstdart/12_05/asset.dart';
import 'package:firstdart/12_05/thing.dart';

class TangibleAsset extends Asset implements Thing {
  String color;
  double _weight;

  TangibleAsset(
      {required String name,
      required int price,
      required this.color,
      required double weight})
      : _weight = weight,
        super(name: name, price: price);

  @override
  double get weight => _weight;

  @override
  set weight(double newWeight) {
    _weight = newWeight;
  }
}
