import 'package:my_first_app/src/models/humanAge.dart';
import 'package:my_first_app/src/models/animal.dart';
import 'package:my_first_app/src/models/domestic.dart';

class Duck extends Animal with Domestic implements HumanAge {
  
  final String name;
  Duck(this.name);

  @override
  String toString() {
    return 'I am a duck and I am $age years old';
  }
  
  @override
  makeNoise() {
    print('Kuaaa');
  }

  @override
  num calculate() {
    return age * 10;
  }

}