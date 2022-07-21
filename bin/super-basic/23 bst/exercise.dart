// --- Directions
// 1) Implement the Node class to create
// a binary search tree.  The constructor
// should initialize values 'data', 'left',
// and 'right'.
// 2) Implement the 'insert' method for the
// Node class.  Insert should accept an argument
// 'data', then create an insert a new node
// at the appropriate location in the tree.
// 3) Implement the 'contains' method for the Node
// class.  Contains should accept a 'data' argument
// and return the Node in the tree with the same value.

class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);

  _addLeaf(Node node, int data) {
    if (node.data < data) {
      node.right = Node(data);
    } else {
      node.left = Node(data);
    }
  }

  void insert(int newData) {
    Node currentNode = this;
    if (currentNode.data < newData) {
      if (currentNode.right != null) {
        currentNode.right?.insert(newData);
      } else {
        _addLeaf(currentNode, newData);
      }
    } else {
      if (currentNode.left != null) {
        currentNode.left?.insert(newData);
      } else {
        _addLeaf(currentNode, newData);
      }
    }
  }

  Node? contains(dynamic data) {
    Node currentNode = this;
    if (currentNode.data == data) {
      return this;
    } else {
      if (currentNode.data < data) {
        if (currentNode.right == null) return null;
        return currentNode.right!.contains(data);
      } else {
        if (currentNode.left == null) return null;
        return currentNode.left!.contains(data);
      }
    }
  }
}
