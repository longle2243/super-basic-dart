// --- Directions
// Return the 'middle' node of a linked list.
// If the list has an even number of elements, return
// the node at the end of the first half of the list.
// *Do not* use a counter variable, *do not* retrieve
// the size of the list, and only iterate
// through the list one time.
// --- Example
//   const l = new LinkedList();
//   l.insertLast('a')
//   l.insertLast('b')
//   l.insertLast('c')
//   midpoint(l); // returns { data: 'b' }

import 'linked_list.dart';

///????
Node midpoint(LinkedList list) {
  int length = list.size();
  int midPoint = length % 2 == 0 ? length ~/ 2 - 1 : length ~/ 2;
  Node result = list.getAt(midPoint) ?? Node(-1);
  return result;
}
