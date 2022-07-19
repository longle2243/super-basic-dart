//import 'dart:html';

/// --- Directions
// Write a function that accepts an integer N
// and returns a NxN spiral matrix.
// --- Examples
//   matrix(2)
//     [[1, 2],     22    passes 1 + 1
//     [4, 3]]      11
//   matrix(3)
//     [[1, 2, 3],  333   passes 1 + 2 * 2
//     [8, 9, 4],   112
//     [7, 6, 5]]   222
//  matrix(4)
//     [[1,   2,  3, 4],  4444  passes 1 + 3 * 2
//     [12, 13, 14, 5],   2223
//     [11, 16, 15, 6],   2113
//     [10,  9,  8, 7]]   3333

enum Direction {
  right,
  down,
  left,
  up,
}

class Matrix2d {
  int? size;
  List<List<int>>? array;

  Matrix2d(this.size, {this.array});

  // factory Matrix2d.spiral(int size) {
  //   List<List<int>> array = [];
  //   int count = 1;
  //   for (var i = 0; i < size; i++) {
  //     List<int> arr = [];
  //     for (var j = 0; j < size; j++) {
  //       arr.add(count);
  //       count++;
  //     }
  //     array.add(arr);
  //   }
  //   print(array);
  //   return Matrix2d(size, array: array);
  // }

  factory Matrix2d.spiral(int size) {
    List<List<int>> array = [];
    //Khoi tao ma tran rong nxn gan tat ca phan tu bang 0
    for (var i = 0; i < size; i++) {
      List<int> arr = [];
      for (var j = 0; j < size; j++) {
        arr.add(0);
        //count++;
      }
      array.add(arr);
    }

    int count = 1;
    int top = 0;
    int left = 0;
    int bottom = size - 1;
    int right = size - 1;

    //vong lap while de tang gia tri bien count
    while (true) {
      //duyet tu trai sang phai
      for (var i = left; i <= right; i++) {
        array[top][i] = count;
        count++;
      }
      top++;

      //duyet tu tren xuong duoi
      for (var i = top; i <= bottom; i++) {
        array[i][right] = count;
        count++;
      }
      right--;

      //duyet tu phai sang trai
      for (var i = right; i >= left; i--) {
        array[bottom][i] = count;
        count++;
      }
      bottom--;

      //duyet tu duoi len tren
      for (var i = bottom; i >= top; i--) {
        array[i][left] = count;
        count++;
      }
      left++;

      if (top > bottom) break;
      if (left > right) break;
    }
    print(array);
    return Matrix2d(size, array: array);
  }
}

List<List<int>> matrix(int size) {
  Matrix2d matrix2d = new Matrix2d.spiral(size);
  List<List<int>> result = matrix2d.array ?? [];
  return result;
}

void main() {
  List<List<int>> m = matrix(3);
}
