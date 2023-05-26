/* 
A dart program that take a string with some missing characters as * 
and provide the right vowels for these missing letters 
and return the right string after substitution
*/

void main(List<String> args) {
  print(
      uncensor("Wh*r* d*d my v*w*ls g*?", "eeioeo")); // Where did my vowels go?
  print(uncensor("abcd", "")); // abcd
  print(uncensor("*PP*RC*S*", "UEAE")); // UPPERCASE
}

String? uncensor(String st1, String st2) {
  String newString = "";
  int j = 0;
  for (int i = 0; i < st1.length; i++) {
    if (st1[i] == '*') {
      newString += st2[j];
      j++;
    } else {
      newString += st1[i];
    }
  }
  return newString;
}
