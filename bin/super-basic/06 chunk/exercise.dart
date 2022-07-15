// --- Directions
// Given an array and chunk size, divide the array into many subarrays
// where each subarray is of length size
// --- Examples
// chunk([1, 2, 3, 4], 2) --> [[ 1, 2], [3, 4]]
// chunk([1, 2, 3, 4, 5], 2) --> [[ 1, 2], [3, 4], [5]]
// chunk([1, 2, 3, 4, 5, 6, 7, 8], 3) --> [[ 1, 2, 3], [4, 5, 6], [7, 8]]
// chunk([1, 2, 3, 4, 5], 4) --> [[ 1, 2, 3, 4], [5]]
// chunk([1, 2, 3, 4, 5], 10) --> [[ 1, 2, 3, 4, 5]]

List<List<int>> chunk(List<int> array, size) {
  List<List<int>> arr1 = [];
  int n = size;
  print(array.length);
  for (var i = 0; i < array.length; i = i + n) {
    if ((i + n) > array.length) {
      List<int> arr = array.sublist(i, array.length);
      arr1.add(arr);
      //print(arr);
      break;
    }
    //print(i + n);
    List<int> arr = array.sublist(i, i + n);
    arr1.add(arr);
    //print(arr);
  }
  return arr1;
}

// void main() {
//   chunk([1, 2, 3, 4, 5, 6, 7, 8], 3);
// }
