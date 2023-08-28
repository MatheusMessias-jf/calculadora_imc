import 'package:calculadora_imc/classes/person.dart';
import 'package:test/test.dart';

void main() {
  test('Calcula IMC', () {
    Person person = Person("Matheus", 68, 1.73);
    expect(person.getIMC(), 22.720438370810918);
    expect(person.getCategory(), equals("Saudável"));
  });
}
