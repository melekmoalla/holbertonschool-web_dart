void outer(String name, String id) {
  String inner() {
  List<String> nameParts = name.split(' ');

    return "Hello Agent B.${nameParts[1]} your id is $id";
  }
  
  print(inner());
}
