// --- Directions
// Implement a Queue datastructure using two stacks.
// *Do not* create an array inside of the 'Queue' class.
// Queue should implement the methods 'add', 'remove', and 'peek'.
// For a reminder on what each method does, look back
// at the Queue exercise.
// --- Examples
//     const q = new Queue();
//     q.add(1);
//     q.add(2);
//     q.peek();  // returns 1
//     q.remove(); // returns 1
//     q.remove(); // returns 2

import 'dart:ffi';

import 'stack.dart';

class Queue {
  Stack stack = Stack();

  void add(dynamic value) {
    this.stack.push(value);
  }

  dynamic remove() {
    Stack stack1 = Stack();
    while (stack.peek() != null) {
      stack1.push(stack.pop());
    }
    dynamic result = stack1.pop();
    while (stack1.peek() != null) {
      stack.push(stack1.pop());
    }
    return result;
  }

  dynamic peek() {
    Stack stack1 = Stack();
    while (stack.peek() != null) {
      stack1.push(stack.pop());
    }
    dynamic result = stack1.peek();
    while (stack1.peek() != null) {
      stack.push(stack1.pop());
    }
    return result;
  }
}
