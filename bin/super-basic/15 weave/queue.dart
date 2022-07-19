// --- Directions
// Implement a 'peek' method in this Queue class.
// Peek should return the last element (the next
// one to be returned) from the queue *without*
// removing it.

class Queue {
  final queue = [];

  void add(dynamic value) {
    this.queue.add(value);
  }

  dynamic remove() {
    dynamic result;
    if (queue.length > 0) {
      result = queue.elementAt(0);
      queue.removeAt(0);
    }
    return result;
  }

  dynamic peek() {
    dynamic result;
    if (this.queue.length > 0) {
      result = this.queue.elementAt(0);
    }
    return result;
  }
}
