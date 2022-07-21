class Node {
  int data;
  Node? parent;
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
}
