import 'package:my_first_app/src/models/animal.dart';
import 'package:my_first_app/src/models/domestic.dart';
import 'package:my_first_app/src/models/humanAge.dart';

class Cat extends Animal with Domestic implements HumanAge{
  final String name;

  Cat(this.name);

  String toString() {
    return 'I am a cat and I am $age years old';
  }

  @override
  makeNoise() {
    print('Miauuu');
  }

  @override
  num calculate() {
    int factor = 7;
    return age * factor;
  }
}
