import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/classes/person.dart';
import 'package:calculadora_imc/exceptions/invalid_name_exception.dart';
import 'package:calculadora_imc/exceptions/invalid_person_values_exception.dart';

void main(List<String> arguments) {
  print("Calcule seu IMC");

  var name = '';
  var weight = 0.0;
  var height = 0.0;

  print("Informe seu nome: ");
  var line = stdin.readLineSync(encoding: utf8);
  try {
    if (line?.trim() == '') {
      throw InvalidNameException();
    }
    name = line ?? "";
  } on InvalidNameException {
    print(InvalidNameException());
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  print("Informe seu peso em kg: ");
  line = stdin.readLineSync(encoding: utf8);
  try {
    if (line.toString() == "" || double.parse(line.toString()) == 0) {
      throw InvalidPersonValuesException();
    }
    weight = double.parse(line.toString());
  } on InvalidPersonValuesException {
    print(InvalidPersonValuesException());
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  print("Informe sua altura em metros: ");
  line = stdin.readLineSync(encoding: utf8);
  try {
    if (line.toString() == "" || double.parse(line.toString()) == 0) {
      throw InvalidPersonValuesException();
    }
    height = double.parse(line.toString());
  } on InvalidPersonValuesException {
    print(InvalidPersonValuesException());
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  Person person = Person(name, weight, height);
  print("Seu imc é ${person.getIMC().toStringAsFixed(2)}");
  print("Você se encaixa na categoria ${person.getCategory()}");
}
