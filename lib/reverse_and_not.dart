/*
A dart program that take an integer 
and return a string of the reversed integer and the original integer
*/

void main(List<String> args) {
  print(reverseAndNot(123)); // 321123
  print(reverseAndNot(152)); // 251152
  print(reverseAndNot(123456789)); // 987654321123456789
}

String? reverseAndNot(int number) {
  String oldSt, newSt = "";
  oldSt = number.toString();
  for (int i = oldSt.length - 1; i >= 0; i--) {
    newSt += oldSt[i];
  }
  return newSt + oldSt;
}
