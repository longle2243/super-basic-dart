// --- Directions
// Given a linked list, return the element n spaces
// from the last node in the list.  Do not call the 'size'
// method of the linked list.  Assume that n will always
// be less than the length of the list.
// --- Examples
//    const list = new List();
//    list.insertLast('a');
//    list.insertLast('b');
//    list.insertLast('c');
//    list.insertLast('d');
//    fromLast(list, 2).data // 'b'

//import 'dart:html';

import 'linked_list.dart';

//Node fromLast_cheating(LinkedList list, int n) {}

Node fromLast(LinkedList list, int n) {
  List<Node> listnode = [];
  Node moveNode = list.head ?? Node(-1);
  listnode.add(moveNode);
  while (moveNode.next != null) {
    moveNode = moveNode.next!;
    listnode.add(moveNode);
  }
  return listnode[listnode.length - n - 1];
}
