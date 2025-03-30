String longestUniqueSubstring(String str) {
  if (str == null || str.length == 0) {
    return "";
  }
  List<String> list = [];
  String return_str = '';
  int maxLength = 0;

  for (int i = 0; i < str.length; i++) {

    if (!list.contains(str[i])) {
      list.add(str[i]);
    } else {
      list.remove(str[i]);
      list.add(str[i]);
    }
    
    if (list.length > maxLength) {
      maxLength = list.length;
      return_str = list.join('');
    }
  }

  return return_str;
}
