// --- Directions
// Implement classes Node and Linked Lists
// See 'directions' document

class Node {
  dynamic? data;
  Node? next;

  Node(this.data, [this.next = null]);
}

class LinkedList extends Iterable {
  Node? head;
  int sizes = 0;
  void insertFirst(int data) {
    Node newNode = Node(data, this.head);
    this.head = newNode;
    this.sizes++;
  }

  void insertLast(dynamic data) {
    Node newNode = Node(data, null);
    if (this.head == null) {
      this.head = newNode;
    } else {
      Node? moveNode = this.head;
      while (moveNode?.next != null) {
        moveNode = moveNode?.next;
      }
      moveNode?.next = newNode;
    }
    this.sizes++;
  }

  int size() {
    return this.sizes;
  }

  Node? getFirst() {
    return this.head;
  }

  Node? getAt(int index) {
    if (index + 1 > this.sizes)
      return null;
    else {
      Node? moveNode = this.head;
      int movePostion = 0;
      while (movePostion < index) {
        moveNode = moveNode?.next;
        movePostion++;
      }
      return moveNode;
    }
  }

  void removeFirst() {
    if (this.head != null) {
      this.head = this.head?.next;
      this.sizes--;
    }
  }

  Node? getLast() {
    Node? moveNode = this.head;
    while (moveNode?.next != null) {
      moveNode = moveNode?.next;
    }
    return moveNode;
  }

  void removeAt(int index) {
    if (index + 1 <= this.sizes) {
      print(index);
      Node? moveNode = this.head;
      int movePostion = 0;
      while (movePostion < index - 1) {
        moveNode = moveNode?.next;
        movePostion++;
      }
      if (movePostion == 0) {
        removeFirst();
      } else {
        moveNode?.next = moveNode.next?.next;
      }
      this.sizes--;
    }
  }

  void insertAt(int data, int index) {
    Node newNode = Node(data);
    if (index < 0) {
    } else if (index >= sizes) {
      insertLast(data);
    } else {
      Node? moveNode = this.head;
      int movePosition = 0;
      while (movePosition < index - 1) {
        moveNode = moveNode?.next;
        movePosition++;
      }
      if (movePosition == 0) {
        insertFirst(data);
      } else {
        newNode.next = moveNode?.next;
        moveNode?.next = newNode;
      }
      this.sizes++;
    }
  }

  void removeLast() {
    if (this.sizes <= 0) {
    } else if (this.sizes == 1) {
      removeFirst();
    } else {
      Node? moveNode = this.head;
      while (moveNode?.next?.next != null) {
        moveNode = moveNode?.next;
      }
      moveNode?.next = null;
      this.sizes--;
    }
  }

  void clear() {
    this.head = Node(null);
    this.sizes = 0;
  }

  forEach(Function(Node node) fn) {
    Node? nextNode = head;
    while (nextNode != null) {
      fn(nextNode);
      nextNode = nextNode.next;
    }
  }

  @override
  Iterator get iterator => LinkedListIterator(this);
}

class LinkedListIterator implements Iterator {
  LinkedList linkedList;
  Node? _current;
  Node? _next;
  LinkedListIterator(this.linkedList) {
    this._current = this.linkedList.head;
  }

  @override
  Node? get current {
    _next = _current;
    _current = _current?.next;
    return _next;
  }

  @override
  bool moveNext() {
    if (this._current != null) {
      return true;
    } else {
      return false;
    }
  }
}
