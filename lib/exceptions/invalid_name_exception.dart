class InvalidNameException implements Exception {
  String error() => "Invalid Name!";

  @override
  String toString() {
    return "InvalidNameException: ${error()}";
  }
}
