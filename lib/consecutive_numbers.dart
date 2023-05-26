/*
A program that return if the unsorted list can be a consecutive sorted list or no
*/

void main(List<String> args) {
  print(cons([5, 1, 4, 3, 2])); // true
  print(cons([5, 1, 4, 3, 2, 8])); // false
  print(cons([5, 6, 7, 8, 9, 9])); // false
}

bool cons(List<int> list) {
  bool res = false;
  list.sort();
  for (int i = 0; i < list.length - 1; i++) {
    if (list[i + 1] - list[i] == 1) {
      res = true;
    } else {
      res = false;
    }
  }
  return res;
}
