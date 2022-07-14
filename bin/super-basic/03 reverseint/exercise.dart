// --- Directions
// Given an integer, return an integer that is the reverse
// ordering of numbers.
// --- Examples
//   reverseInt(15) === 51
//   reverseInt(981) === 189
//   reverseInt(500) === 5
//   reverseInt(-15) === -51
//   reverseInt(-90) === -9

int reverseInt(int n) {
  String rev = "";
  String input = n.toString();

  if (input.contains("-")) {
    for (var i = input.length - 1; i > 0; i--) {
      rev = rev + input[i];
    }
    rev = "-" + rev;
  } else {
    for (var i = input.length - 1; i >= 0; i--) {
      rev = rev + input[i];
    }
  }
  int result = int.parse(rev);
  return result;
}

String reverse(String input) {
  return "One line only !!!";
}
