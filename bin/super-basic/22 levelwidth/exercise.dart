// --- Directions
// Given the root node of a tree, return
// an array where each element is the width
// of the tree at each level.
// --- Example
// Given:
//     0
//   / |  \
// 1   2   3
// |       |
// 4       5
// Answer: [1, 3, 2]
import 'node.dart';

_traverseBF(int level, Node baseNode, Function(Node, int) fn) {
  List<Node> listNode = [];
  listNode.add(baseNode);
  var index = 0;
  //traverse node
  while (true) {
    Node currentNode = listNode[index];
    int numberOfChild = currentNode.children.length;
    for (var i = 0; i < numberOfChild; i++) {
      listNode.add(currentNode.children[i]);
    }
    fn(currentNode, currentNode.level);
    index++;
    if (index > listNode.length - 1) break;
  }
}

List<int> levelWidth(Node root) {
  List<int> widthList = [];

  _traverseBF(1, root, (node, level) {
    //print("_traverseBF fn ${node.data}, $level");
    if (level > widthList.length) widthList.add(0);
    widthList[level - 1]++;
    // each level has at least one node with previous level
    // levels grow from 1 to max level
  });
  return widthList;
}
