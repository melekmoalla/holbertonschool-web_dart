String longestUniqueSubstring(String str) {
  String  return_str = '';
  int maxLength = 0;
  for (int i = 0; i < str.length; i++) {
    if (i == str.indexOf(str[i])){
        return_str += str[i];
    }
  }
  return return_str;
}
