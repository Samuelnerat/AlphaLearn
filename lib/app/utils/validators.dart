class Validators {
  static String? validateEmail(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'Email is required';
  }

  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if (!emailRegex.hasMatch(value.trim())) {
    return 'Enter a valid email';
  }

  return null; // ✅ Valid
}

    static String? validatePassword(String? value) {

        if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }
    static String? validatePhone(String? value) {
    if (value == null || value.length < 10) {
      return 'Enter valid Phone Number';
    }

    return null;
  }
    static String? validateNotEmpty(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field cannot be empty';
    }
    return null;
  }
}