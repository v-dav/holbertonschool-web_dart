bool isPalindrome(String s) {
  if (s.length < 3) return false;
  String cleanString = s.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '');
  return cleanString == cleanString.split('').reversed.join('');
}
