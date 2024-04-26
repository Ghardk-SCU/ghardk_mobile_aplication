import 'dart:io';

String? validPassword(String x) {
  String temp = x;
  bool isupper = false, islower = false, ischar = false;

  for (var i = 0; i < x.length; i++) {
    if (x[i] == temp[i].toLowerCase() && isChar(x[i])!) islower = true;
    if (x[i] == temp[i].toUpperCase() && isChar(x[i])!) isupper = true;
  }
  if (x.length < 10) {
    return 'Password is weak, should contain 10 digits';
  } else if (!isupper) {
    return 'Password should contain at least Uppercase character';
  } else if (!islower) {
    return 'Password should contain at least Lowercase character';
  }
}

String? validEmail(String x) {
  if (!x.contains('@')) return 'Unvalid Email';
}

String? validnationalId(String x) {
  if (x.length != 14) return 'Please write a correct National ID';
}

String? confirmationPassword(String x) {
  String? temp;
  if (temp != x) return 'Confirmation password not like password';
}

bool? isChar(var x) {
  if ((x.codeUnitAt(0) >= 65 && x.codeUnitAt(0) <= 90) ||
      (x.codeUnitAt(0) >= 97 && x.codeUnitAt(0) <= 122)) {
    return true;
  } else {
    return false;
  }
}
