class Validators {
  static String? validate(String val) {
    if (val.isEmpty) return "Field required";
    return null;
  }
}
