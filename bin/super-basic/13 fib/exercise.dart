// --- Directions
// Print out the n-th entry in the fibonacci series.
// The fibonacci series is an ordering of numbers where
// each number is the sum of the preceeding two.
// For example, the sequence
//  [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
// forms the first ten entries of the fibonacci series.
// Example:
//   fib(4) === 3

// int fib(int n) {}

// int fib2(int n) {}

int fibonacci(int n) => n <= 2 ? 1 : fibonacci(n - 2) + fibonacci(n - 1);

int fib(int n) {
  //String output = "";
  final list = [];
  for (int i = 1; i <= n; ++i) {
    //output += fibonacci(i).toString() + ", ";
    list.add(fibonacci(i));
  }
  print(list[list.length - 1]);
  //print(output);
  return list[list.length - 1];
}

int fib2(int n) {
  //String output = "";
  final list = [];
  for (int i = 1; i <= n; ++i) {
    //output += fibonacci(i).toString() + ", ";
    list.add(fibonacci(i));
  }
  print(list[list.length - 1]);
  //print(output);
  return list[list.length - 1];
}

main() {
  fib(39);
}
