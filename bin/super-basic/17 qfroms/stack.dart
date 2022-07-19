class Stack {
  List stack = [];

  void push(int value) {
    this.stack.add(value);
  }

  dynamic pop() {
    dynamic result;
    if (stack.length > 0) {
      result = stack.elementAt(stack.length - 1);
      stack.removeLast();
    }
    return result;
  }

  dynamic peek() {
    dynamic result;
    if (stack.length > 0) {
      result = stack.elementAt(stack.length - 1);
    }
    return result;
  }
}
