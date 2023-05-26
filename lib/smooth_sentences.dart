/* 
A program that check if the string is smooth or not
"A smooth sentence is the sentence in which every word ends with the same latter that 
next word starts with regardless of the case of the letters 'case insensitive' ".
*/

void main(List<String> args) {
  print(isSmooth("Marta appreciated deep perpendicular right trapezoids"));
  // true
  print(isSmooth("Someone is outside the doorway"));
  // false
  print(isSmooth("She eats super righteously"));
  // true
}

bool isSmooth(String st) {
  bool res = false;
  for (int i = 0; i < st.length; i++) {
    if (st[i] == ' ') {
      if (st[i - 1] == st[i + 1]) {
        res = true;
      } else if (st[i - 1].codeUnitAt(0) - st[i + 1].codeUnitAt(0) == 32 ||
          st[i - 1].codeUnitAt(0) - st[i + 1].codeUnitAt(0) == -32) {
        res = true;
      } else {
        res = false;
        break;
      }
    }
  }
  return res;
}
