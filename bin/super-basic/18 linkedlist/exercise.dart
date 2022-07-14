// --- Directions
// Implement classes Node and Linked Lists
// See 'directions' document

class Node {
  int data;
  Node next;

  Node(this.data, [this.next = null]);
}

class LinkedList extends Iterable {
  Node head;

  void insertFirst(int data) {
    
  }

  void insertLast(int data) {
    
  }

  int size() {
    
  }

  Node getFirst() {
    
  }

  Node getAt(int index) {
    
  }

  void removeFirst() {
    
  }

  Node getLast() {
    
  }

  void removeAt(index) {
    
  }

  void insertAt(int data, int index) {
    
  }

  void removeLast() {
    
  }

  void clear() {
    
  }

  forEach(Function(Node node) fn) {
    Node nextNode = head;
    while (nextNode != null) {
      fn(nextNode);
      nextNode = nextNode.next;
    }
  }

  @override
  Iterator get iterator => LinkedListIterator(this);
}

class LinkedListIterator implements Iterator {
  
}
