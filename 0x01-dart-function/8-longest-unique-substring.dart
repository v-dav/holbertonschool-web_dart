String longestUniqueSubstring(String str) {
  String substring = str[0];
  for (int i = 1; i < str.length; i++) {
    if (str[i] == substring || substring.contains(str[i])) {
      substring = str[i];
      continue;
    }
    substring += str[i];
  }
  return substring;
}
