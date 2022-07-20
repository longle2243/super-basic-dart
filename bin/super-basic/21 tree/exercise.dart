// // --- Directions
// // 1) Create a node class.  The constructor
// // should accept an argument that gets assigned
// // to the data property and initialize an
// // empty array for storing children. The node
// // class should have methods 'add' and 'remove'.
// // 2) Create a tree class. The tree constructor
// // should initialize a 'root' property to null.
// // 3) Implement 'traverseBF' and 'traverseDF'
// // on the tree class.  Each method should accept a
// // function that gets called with each element in the tree

// class Node {
//   dynamic data;
//   List<Node> children = [];
//   Node(this.data);

//   void add(dynamic child) {
//     children.add(Node(child));
//   }

//   void remove(dynamic child) {
//     children.forEach((element) {
//       children.remove(Node(child));
//     });
//   }
// }

// class Tree {
//   Node? root;

//   _traverseBF(Node baseNode, Function(Node) fn) {}

//   _traverseDF(Node baseNode, Function(Node) fn) {}

//   traverseBreadthFirst(Function(Node) fn) {}

//   traverseDepthFirst(Function(Node) fn) {}
// }

void main() {
  var n = new Node('a');
  n.add('b');

  n.remove('b');
  print(n.children.length);
}

class Node {
  dynamic data;
  List<Node> children = [];
  Node(this.data);
  void add(dynamic child) {
    children.add(Node(child));
  }

  void remove(dynamic child) {
    for (int i = 0; i < children.length; i++) {
      if (children[i].data == child) {
        children.remove(children[i]);
      }
    }
    ;
  }
}

class Tree {
  Node? root;

  _traverseBF(Node baseNode, Function(Node) fn) {
    baseNode = root ?? Node(-99);
    List<Node> listNode = [];
    listNode.add(baseNode);
    var index = 0;
    while (true) {
      Node currentNode = listNode[index];
      int numberOfChild = currentNode.children.length;
      for (var i = 0; i < numberOfChild; i++) {
        listNode.add(currentNode.children[i]);
      }
      index++;
      if (index > listNode.length - 1) break;
    }
    for (Node node in listNode) fn(node);
  }

  _traverseDF(Node baseNode, Function(Node) fn) {
    baseNode = root ?? Node(-99);
    //List for traversing each element
    List<Node> listNodeTemp = [];
    //Store element which isn't children
    List<Node> listNodeStack = [];
    //Store element which is traversed
    List<Node> storeNodeTraversed = [];
    //Init list Temperary
    listNodeTemp.add(baseNode);

    while (true) {
      //Get last node in listNodeTemp to traver
      Node currentNode = listNodeTemp.elementAt(listNodeTemp.length - 1);
      int numberOfChild = currentNode.children.length;
      //If currentNode was traversed
      if (storeNodeTraversed.contains(currentNode)) {
        listNodeStack.add(currentNode);
        listNodeTemp.removeLast();
        if (listNodeTemp.length == 0) {
          break;
        } else {
          continue;
        }
      } else {
        for (var i = 0; i < numberOfChild; i++) {
          listNodeTemp.add(currentNode.children[i]);
        }
        storeNodeTraversed.add(currentNode);
      }
    }
    //Result should be reversed of listNodeStack
    var resultList = listNodeStack.reversed;
    for (Node node in resultList) fn(node);
  }

  traverseBreadthFirst(Function(Node) fn) {
    _traverseBF(root ?? Node(-99), fn);
  }

  traverseDepthFirst(Function(Node) fn) {
    _traverseDF(root ?? Node(-99), fn);
  }
}
