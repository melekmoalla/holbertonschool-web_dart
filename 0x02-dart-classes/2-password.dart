class Password{
    String password = "";

    
    bool isValid() {
        return password.length >= 8 && RegExp(r'^[a-zA-Z0-9]+$').hasMatch(password);
    }
    
}