// --- Directions
// Create a stack data structure.  The stack
// should be a class with methods 'push', 'pop', and
// 'peek'.  Adding an element to the stack should
// store it until it is removed.
// --- Examples
//   const s = new Stack();
//   s.push(1);
//   s.push(2);
//   s.pop(); // returns 2
//   s.pop(); // returns 1

class Stack {
  List stack = [];

  void push(int value) {
    this.stack.add(value);
  }

  int? pop() {
    int? result;
    if (stack.length > 0) {
      result = stack.elementAt(stack.length - 1);
      stack.removeLast();
    }
    return result;
  }

  int? peek() {
    int? result;
    if (stack.length > 0) {
      result = stack.elementAt(stack.length - 1);
    }
    return result;
  }
}
