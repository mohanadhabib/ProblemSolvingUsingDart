// A program to check if Hex code is a valid one or not

void main(List<String> args) {
  print(isValidHexCode("#CD5C5C"));
  // true
  print(isValidHexCode("#EAECEE"));
  // true
  print(isValidHexCode("#eaecee"));
  // true
  print(isValidHexCode("#CD5C58C"));
  // false
  // Length exceeds 6
  print(isValidHexCode("#CD5C5Z"));
  // false
  // Not all alphabetic characters in A-F
  print(isValidHexCode("#CD5C&C"));
  // false
  // Contains unacceptable character
  print(isValidHexCode("CD5C5C"));
  // false
  // Missing #
}

bool isValidHexCode(String hex) {
  List<String> validChars = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'a',
    'b',
    'c',
    'd',
    'e',
    'f'
  ];
  bool res = false;
  if (hex[0] != '#') {
    res = false;
  } else {
    if (hex.length != 7) {
      res = false;
    } else {
      for (int i = 1; i < hex.length; i++) {
        for (int j = 0; j < validChars.length; j++) {
          if (hex[i] == validChars[j]) {
            res = true;
            break;
          } else {
            res = false;
          }
        }
        if (res != true) {
          res = false;
          break;
        }
      }
    }
  }
  return res;
}
