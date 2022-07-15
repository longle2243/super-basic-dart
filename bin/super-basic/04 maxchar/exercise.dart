// --- Directions
// Given a string, return the character that is most
// commonly used in the string.
// --- Examples
// maxChar("abcccccccd") === "c"
// maxChar("apple 1231111") === "1"

import 'dart:math';

String maxChar(String input) {
  final list = input.split("");

  var map = Map();
  list.forEach((element) {
    if (!map.containsKey(element)) {
      map[element] = 1;
    } else {
      map[element] += 1;
    }
  });

  //print(map);
  int reslut =
      map.values.reduce((value, element) => value > element ? value : element);
  //print(reslut);
  String result1 = "";
  map.forEach((key, value) {
    if (value == reslut) {
      //print(key);
      result1 = key;
    }
  });
  return result1;
}
