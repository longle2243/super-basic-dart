// --- Description
// Create a queue data structure.  The queue
// should be a class with methods 'add' and 'remove'.
// Adding to the queue should store an element until
// it is removed
// --- Examples
//     const q = new Queue();
//     q.add(1);
//     q.remove(); // returns 1;

import 'dart:collection';

class Queue {
  final queue = [];

  void add(int value) {
    this.queue.add(value);
  }

  int? remove() {
    int? result;
    if (queue.length > 0) {
      result = queue.elementAt(0);
      queue.removeAt(0);
    }
    return result;
  }
}
