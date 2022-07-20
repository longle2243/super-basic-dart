// --- Directions
// Given a linked list, return true if the list
// is circular, false if it is not.
// --- Examples
//   const l = new List();
//   const a = new Node('a');
//   const b = new Node('b');
//   const c = new Node('c');
//   l.head = a;
//   a.next = b;
//   b.next = c;
//   c.next = b;
//   circular(l) // true

//import 'dart:html';

import 'linked_list.dart';

bool circular(LinkedList list) {
  List<Node> listnode = [];
  Node moveNode = list.head ?? Node(-1);
  listnode.add(moveNode);
  while (true) {
    if (moveNode.next != null) {
      moveNode = moveNode.next!;
      if (listnode.contains(moveNode)) {
        return true;
      } else {
        listnode.add(moveNode);
      }
    } else {
      break;
    }
  }
  return false;
}
