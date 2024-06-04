bool isValid(String s) {
  bool isOpenBracket(String char) {
    return char == '(' || char == '{' || char == '[';
  }

  bool isMatchingBracket(String open, String close) {
    return open == '(' && close == ')' ||
        open == '{' && close == '}' ||
        open == '[' && close == ']';
  }

  int count = 0;
  for (var i = 0; i < s.length; i++) {
    final char = s[i];
    if (isOpenBracket(char)) {
      count++;
    } else {
      if (count == 0 || !isMatchingBracket(s[i - 1], char)) {
        return false;
      }
      count--;
    }
  }
  return count == 0;
}

void main() {
  print(isValid("()"));
}
