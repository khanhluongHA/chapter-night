bool isValid(String s) {
  List<String> stack = [];
  for (var i = 0; i < s.length; i++) {
    String c = s[i];
    if (c == '(' || c == '{' || c == '[') {
      stack.add(c);
    } else {
      if (stack.last == ')' || stack.last == '}' || stack.last == ']') {
        return true;
      }
    }
  }
  return stack.isEmpty;
}
void main() {
  print(isValid("(}"));
}
