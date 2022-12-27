// ignore_for_file: body_might_complete_normally_nullable
import 'package:email_validator/email_validator.dart';

String? validateEmail(String? email) {
  return email != null && EmailValidator.validate(email)
      ? null
      : "Please enter a valid email";
}

String? validation(String? password) {
  if (password!.isEmpty || password.length <= 4) {
    return 'the field is required';
  }
  // return 'the password must more than 4 characters';
}

String? validatePassword(String? value) {
  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{5,}$');
  if (value!.isEmpty) {
    return 'Please enter your password';
  } else {
    if (!regex.hasMatch(value)) {
      return 'password should contain capital letters,\nsymbols and numbers';
    } else {
      return null;
    }
  }
}
/* r'^
  (?=.*[A-Z])         // should contain at least one upper case
  (?=.*[a-z])         // should contain at least one lower case
   (?=.*?[0-9])       // should contain at least one digit
  (?=.*?[!@#\$&*~])  // should contain at least one Special character
   .{5,}             // Must be at least5 characters in length
   */