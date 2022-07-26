import 'dart:io';

int calcScore(String word) {
  Map<String, int> chars = {
    'A': 1,
    'E': 1,
    'I': 1,
    'O': 1,
    'U': 1,
    'L': 1,
    'N': 1,
    'R': 1,
    'S': 1,
    'T': 1,
    'D': 2,
    'G': 2,
    'B': 3,
    'C': 3,
    'M': 3,
    'P': 3,
    'F': 4,
    'H': 4,
    'V': 4,
    'W': 4,
    'Y': 4,
    'K': 5,
    'J': 8,
    'X': 8,
    'Q': 10,
    'Z': 10,
  };

  word = word.toUpperCase();
  List letters = word.split('');
  List<int> val = [];
  for (String i in letters) {
    if (chars.containsKey(i)) {
      val.add(chars[i]!);
    } else {
      val.add(0);
    }
  }
  int sum = 0;
  for (int i = 0; i < val.length; i++) {
    sum = sum + val[i];
  }
  return sum;
}

// main method
void main(List<String> arguments) {
  print("type here what you want :");
  String input = stdin.readLineSync()!;
  List words = input.split(" ");
  for (String i in words) {
    print(calcScore(i));
  }
}
