// A program that simulate a code interview

void main(List<String> args) {
  print(interview([5, 5, 10, 10, 15, 15, 20, 20], 120));
  // qualified
  print(interview([2, 3, 8, 6, 5, 12, 10, 18], 64));
  // qualified
  print(interview([5, 5, 10, 10, 25, 15, 20, 20], 120));
  // disqualified
  // Exceeded the time limit for a medium question.
  print(interview([5, 5, 10, 10, 15, 15, 20], 120));
  // disqualified
  // Did not complete all the questions.
  print(interview([5, 5, 10, 10, 15, 15, 20, 20], 130));
  // disqualified
  // Solved all the questions in their respected time limits but exceeded the total time limit of the interview.
}

String? interview(List<int> arr, int totalTime) {
  String res = "";
  int sum = 0;
  if (arr.length != 8) {
    res = "disqualified";
  } else {
    for (int i = 0; i < arr.length; i++) {
      sum += arr[i];
    }
    if (sum > totalTime || totalTime > 120) {
      res = "disqualified";
    } else {
      for (int i = 0; i < arr.length; i++) {
        if (i >= 0 && i <= 1) {
          if (arr[i] <= 5) {
            res = "qualified";
          } else {
            res = "disqualified";
            break;
          }
        } else if (i > 1 && i <= 3) {
          if (arr[i] <= 10) {
            res = "qualified";
          } else {
            res = "disqualified";
            break;
          }
        } else if (i > 3 && i <= 5) {
          if (arr[i] <= 15) {
            res = "qualified";
          } else {
            res = "disqualified";
            break;
          }
        } else if (i > 5 && i <= 7) {
          if (arr[i] <= 20) {
            res = "qualified";
          } else {
            res = "disqualified";
            break;
          }
        }
      }
    }
  }
  return res;
}
