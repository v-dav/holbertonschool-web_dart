String longestUniqueSubstring(String str) {
  int start = 0, maxLength = 0, maxStart = 0;
  Map<String, int> charIndex = {};

  for (int end = 0; end < str.length; end++) {
    if (charIndex.containsKey(str[end]) && charIndex[str[end]]! >= start) {
      start = charIndex[str[end]]! + 1;
    }

    if (end - start + 1 > maxLength) {
      maxLength = end - start + 1;
      maxStart = start;
    }

    charIndex[str[end]] = end;
  }

  return str.substring(maxStart, maxStart + maxLength);
}
