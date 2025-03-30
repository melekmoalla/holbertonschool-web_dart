bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

String longestPalindrome(String s) {
  String longest = '';
  int length = s.length;

  for (int i = 0; i < length; i++) {
    for (int j = i + 1; j <= length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

    return longest.isEmpty ? "none" : longest;
}
