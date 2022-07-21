class Node {
  dynamic data;
  int level;
  List<Node> children = [];
  Node(this.data, {this.level = 1});
  void add(dynamic child) {
    children.add(Node(child, level: this.level + 1));
  }

  void remove(dynamic child) {
    for (var i = 0; i < children.length; i++) {
      if (children[i].data == child) {
        children.removeAt(i);
      }
    }
  }
}
