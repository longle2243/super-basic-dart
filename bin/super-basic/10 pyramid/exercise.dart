// --- Directions
// Write a function that accepts a positive number N.
// The function should console log a pyramid shape
// with N levels using the # character.  Make sure the
// pyramid has spaces on both the left *and* right hand sides
// --- Examples
//   pyramid(1)
//       '#'
//   pyramid(2)
//       ' # '      < 2 | > 2
//       '###'      < 1 | > 3
//   pyramid(3)
//       '  #  '    < 3  | > 3
//       ' ### '    < 2  | > 4
//       '#####'    < 1  | > 5

import 'dart:math';

void pyramid(int lineCount, {required Function(String) printForUnitTest}) {
  final list = [];
  String t = "#";
  for (int i = 0; i < lineCount; i++) {
    String pc = "";
    for (var j = 0; j < lineCount - i - 1; j++) {
      print(j);
      pc = pc + " ";
    }
    list.add(pc + t + pc);
    t = t + "##";
  }
  list.forEach((element) {
    printForUnitTest(element);
  });
}

//String pyramidLine(int level, int height) {}

void test1(int lineCount) {
  final list = [];
  String t = "#";
  for (int i = 0; i < lineCount; i++) {
    String pc = "";
    for (var j = 0; j < lineCount - i - 1; j++) {
      print(j);
      pc = pc + " ";
    }
    list.add(pc + t + pc);
    t = t + "##";
  }
  print(list);
}

void main() {
  test1(3);
}
