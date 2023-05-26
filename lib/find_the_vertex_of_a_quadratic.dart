/*
A program to get the vertex of a 
quadratic equation 
*/

void main(List<String> args) {
  print(findVertex(1, 0, 25)); // [0, 25]
  print(findVertex(-1, 0, 25)); // [0, 25]
  print(findVertex(1, 10, 4)); // [-5, -21]
}

List<int> findVertex(int a, int b, int c) {
  List<int> result = List.filled(2, 0);
  int x, y;
  x = ((-1 * b) / 2 * a).ceil();
  y = a * x * x + b * x + c;
  result[0] = x;
  result[1] = y;
  return result;
}
