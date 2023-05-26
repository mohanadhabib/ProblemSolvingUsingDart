/*
A program that check if every string in the first list 
exist in any string in the second list or not 
*/
void main(List<String> args) {
  print(canFind(["at", "be", "th", "au"], ["beautiful", "the", "hat"])); // true
  print(canFind(
      ["ay", "be", "ta", "cu"], ["maybe", "beta", "abet", "course"])); // false
  print(canFind(
      ["th", "fo", "ma", "or"], ["the", "many", "for", "forest"])); // true
  print(canFind(
      ["oo", "mi", "ki", "la"], ["milk", "chocolate", "cooks"])); // false
}

bool canFind(List<String> st1, List<String> st2) {
  bool res = false;
  int count = 0;
  for (int i = 0; i < st1.length; i++) {
    for (int j = 0; j < st2.length; j++) {
      if (st2[j].contains(st1[i])) {
        res = true;
        count++;
        break;
      } else {
        res = false;
      }
    }
  }
  if (count == st1.length) {
    res = true;
  } else {
    res = false;
  }
  return res;
}
