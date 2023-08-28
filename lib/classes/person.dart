class Person {
  String _name = "";
  double _weight = 0;
  double _height = 0;
  double _imc = 0;
  String _category = "Não calculado.";

  Person(this._name, this._weight, this._height) {
    calcIMC();
  }

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  void setWeight(double weight) {
    _weight = weight;
  }

  double getWeigth() {
    return _weight;
  }

  void setHeight(double height) {
    _height = height;
  }

  double getHeigth() {
    return _height;
  }

  double getIMC() {
    return _imc;
  }

  String getCategory() {
    return _category;
  }

  void calcIMC() {
    _imc = _weight / (_height * _height);

    switch (_imc) {
      case (< 16):
        _category = "Magreza grave";
      case (>= 16 && < 17):
        _category = "Magreza moderada";
      case (>= 17 && < 18.5):
        _category = "Magreza leve";
      case (>= 18.5 && < 25):
        _category = "Saudável";
      case (>= 25 && < 30):
        _category = "Sobrepeso";
      case (>= 30 && < 35):
        _category = "Obesidade Grau I";
      case (>= 35 && < 40):
        _category = "Obesidade Grau II (Severa)";
      case (>= 40):
        _category = "Obesidade Grau III (Mórbida)";
      default:
        _category = "Não calculado!";
    }
  }
}
