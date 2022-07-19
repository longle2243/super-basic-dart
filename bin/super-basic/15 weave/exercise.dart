// --- Directions
// 1) Complete the task in weave/queue.js
// 2) Implement the 'weave' function.  Weave
// receives two queues as arguments and combines the
// contents of each into a new, third queue.
// The third queue should contain the *alterating* content
// of the two queues.  The function should handle
// queues of different lengths without inserting
// 'undefined' into the new one.
// *Do not* access the array inside of any queue, only
// use the 'add', 'remove', and 'peek' functions.
// --- Example
//    const queueOne = new Queue();
//    queueOne.add(1);
//    queueOne.add(2);
//    const queueTwo = new Queue();
//    queueTwo.add('Hi');
//    queueTwo.add('There');
//    const q = weave(queueOne, queueTwo);
//    q.remove() // 1
//    q.remove() // 'Hi'
//    q.remove() // 2
//    q.remove() // 'There'

import 'dart:collection';

import 'queue.dart';

class ProxyQueue {
  late Queue queue;
  factory ProxyQueue(Queue q1, Queue q2) {
    Queue q = Queue();
    int len =
        q1.queue.length > q2.queue.length ? q1.queue.length : q2.queue.length;
    for (var i = 0; i < len; i++) {
      q.add(q1.remove());
      q.add(q2.remove());
    }
    return ProxyQueue._default(q);
  }
  ProxyQueue._default(this.queue);
}

weave(Queue sourceOne, Queue sourceTwo) {
  //return "One line only !!!";
  return ProxyQueue(sourceOne, sourceTwo).queue;
}
