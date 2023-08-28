class InvalidPersonValuesException implements Exception {
  String error() => "Invalid value!";

  @override
  String toString() {
    return "InvalidPersonValuesException: ${error()}";
  }
}
