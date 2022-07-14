// --- Directions
// Given a string, return true if the string is a palindrome
// or false if it is not.  Palindromes are strings that
// form the same word if it is reversed. *Do* include spaces
// and punctuation in determining if the string is a palindrome.
// --- Examples:
//   palindrome("abba") === true
//   palindrome("abcdefg") === false

// bool palindrome(String input) {

// }

// bool palindrome2(String input) {
//   return "One line only !!!";
// }

// String reverse(String input) {
//   return "One line only !!!";
// }

bool palindrome(String str) {
  int len = str.length;
  String rev = "";
  //print(len);
  if (str.contains(" ")) {
    //print("not palindrome");
    return false;
  } else {
    for (var i = len - 1; i >= 0; i--) {
      rev = rev + str[i];
      //print(rev);
    }
    if (str == rev) {
      // print("palindrome");
      return true;
      //print("str: $str - rev: $rev");
    } else {
      //print("not palindrome");
      return false;
    }
  }
}
