// String reverse(String input) {
// }

// String reverse2(String input) {
// }

// String reverse3(String input) {
//   return "One line only !!!";
// }

String reverse(String input) {
  String rev = "";
  for (var i = input.length - 1; i >= 0; i--) {
    rev = rev + input[i];
  }
  return rev;
}

String reverse2(String input) {
  String rev = "";
  for (var i = input.length - 1; i >= 0; i--) {
    rev = rev + input[i];
  }
  return rev;
}

String reverse3(String input) {
  //return "One line only !!!";
  String rev = "";
  for (var i = input.length - 1; i >= 0; i--) {
    rev = rev + input[i];
  }
  return rev;
}
