class Validate {
  static String? validateNotEmpty(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName tidak boleh kosong.';
    }
    return null;
  }

  static String? validateNumber(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName tidak boleh kosong.';
    }
    if (int.tryParse(value.trim()) == null) {
      return '$fieldName harus berupa angka.';
    }
    return null;
  }

  static String? validatePhone(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName tidak boleh kosong.';
    }
    final phoneRegExp = RegExp(r'^[0-9]{9,15}$');
    if (!phoneRegExp.hasMatch(value.trim())) {
      return '$fieldName tidak valid.';
    }
    return null;
  }
}
