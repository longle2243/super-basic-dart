// --- Directions
// Write a function that returns the number of vowels
// used in a string.  Vowels are the characters 'a', 'e'
// 'i', 'o', and 'u'.
// --- Examples
//   vowels('Hi There!') --> 3
//   vowels('Why do you ask?') --> 4
//   vowels('Why?') --> 0

RegExp regExp = new RegExp(r"");

int vowels(String input) {
//  return "One line only !!!";
  String lower = input.toLowerCase();
  int count = 0;
  final lsvowels = ["a", "e", "o", "u", "i"];

  final list = lower.split("");

  list.forEach((element) {
    if (lsvowels.contains(element)) {
      count++;
      //print(element);
    }
  });
  return count;
}

// void main() {
//   print(vowels("abcdefghijklmnopqrstuvwxyz"));
// }
