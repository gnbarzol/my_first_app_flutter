abstract class Animal {
  bool isMale;
  int _age;


  Animal() {
    isMale = true;
  }

  String get sex => isMale ? 'male' : 'female';

  set age(int value) {
    if(value > 0) {
      _age = value;
    }
  }

  int get age => _age;

  makeNoise() {
    print('Sonido animal');
  }
}