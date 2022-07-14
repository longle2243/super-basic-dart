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
  
}

List<int> levelWidth(Node root) {
  List<int> widthList = [];
  if (root != null) {
    
  }
  _traverseBF(1, root, (node, level) {
//    print("_traverseBF fn ${node.data}, $level");
    // each level has at least one node with previous level
    // levels grow from 1 to max level
    
  });
  return widthList;
}
