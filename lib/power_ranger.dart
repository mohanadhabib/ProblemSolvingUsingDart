/* 
A program that return the number of numbers to the power n exist between 
the start and end numbers 
*/

import 'dart:math';

void main(List<String> args) {
  print(powerRanger(2, 49, 65)); // 2
  print(powerRanger(3, 1, 27)); // 3
  print(powerRanger(10, 1, 5)); // 1
  print(powerRanger(5, 31, 33)); // 1
  print(powerRanger(4, 250, 1300)); // 3
  print(powerRanger(2, 1, 4)); // 2
}

int powerRanger(int power, int start, int end) {
  int count = 0, i = 1;
  num res = pow(1, power);
  while (res <= end) {
    if (res >= start && res <= end) {
      count++;
    }
    i++;
    res = pow(i, power);
  }
  return count;
}
