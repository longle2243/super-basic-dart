// --- Directions
// Write a function that accepts a string.  The function should
// capitalize the first letter of each word in the string then
// return the capitalized string.
// --- Examples
//   capitalize('a short sentence') --> 'A Short Sentence'
//   capitalize('a lazy fox') --> 'A Lazy Fox'
//   capitalize('look, it is working!') --> 'Look, It Is Working!'

String capitalize(String input) {
  final list = input.split(" ");
  List<String> ls = [];
  print(list);
  list.forEach((element) {
    final list1 = element.split("");
    String upper = list1[0].toUpperCase();
    list1[0] = upper;
    //print(upper);
    //print(list1);
    String temp = list1.join();
    element = temp;
    //print(element);
    ls.add(element);
  });
  //print(ls);
  String result = ls.join(" ");
  return result;
}

// void main() {
//   print(capitalize("hi there, how is it going?"));
// }
