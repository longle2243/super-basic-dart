// --- Directions
// Write a function that accepts a positive number N.
// The function should console log a step shape
// with N levels using the # character.  Make sure the
// step has spaces on the right hand side!
// --- Examples
//   steps(2)
//       '# '
//       '##'
//   steps(3)
//       '#  '
//       '## '
//       '###'
//   steps(4)
//       '#   '
//       '##  '
//       '### '
//       '####'

void steps(int lineCount, {required Function(String) printForUnitTest}) {
  final list = [];
  String t = "";
  for (int i = 0; i < lineCount; i++) {
    String pc = "";
    for (var j = 0; j < lineCount - i - 1; j++) {
      pc = pc + " ";
    }
    t = t + "#";
    list.add(t + pc);
  }
  list.forEach((element) {
    printForUnitTest(element);
  });
}

// String hashLine(int lineCount, int lineNr) {}

void steps1(int lineCount) {
  final list = [];
  String t = "";
  for (int i = 0; i < lineCount; i++) {
    String pc = "";
    for (var j = 0; j < lineCount - i - 1; j++) {
      pc = pc + " ";
    }
    t = t + "#";
    list.add(t + pc);
  }

  print(list);
}

// void main() {
//   steps1(5);
// }
