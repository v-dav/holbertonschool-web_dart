import '9-palindrome.dart';

List findPalindromes(List<String> tab) {
  var res = '';
  var palindromes = [];

  for (int i = 0; i < tab.length; i++) {
    for (int j = i; j < tab.length; j++) {
      res += tab[j];

      if (isPalindrome(res)) {
        palindromes.add(res);
        i += res.length;
        res = '';
        break;
      }
    }
    res = '';
  }
  return palindromes;
}

String longestPalindrome(String s) {
  var tmp = s.split('');
  var longest = '';
  var palindromes = [];

  if (isPalindrome(s)) { return s; }
  
  palindromes = findPalindromes(tmp);
  palindromes.forEach((ele) {
    longest = ele.length > longest.length ? ele: longest;
  });
  return longest != '' ? longest: 'none';
}
