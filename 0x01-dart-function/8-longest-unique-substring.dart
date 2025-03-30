String longestUniqueSubstring(String str) {
    if (str == null || str.length == 0) {
    return "";
    }
    List<String> list = [];

    for (int i = 0; i < str.length; i++) {
        if (i == str.indexOf(str[i])){
            list.add(str[i]);
        }
        else{

            list.remove(str[i]);
            list.add(str[i]);
        }
    }

    return list.join('');
}
