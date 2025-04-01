import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
    try{
        String admin_string= await fetchUserData();
        Map<String, dynamic> admin = await jsonDecode(admin_string);
        return 'Hello ${admin['username']}';
    }catch(e){
        return 'error caught: $e';
    }
}

Future<String> loginUser() async{
    if (await checkCredentials()) {
        String userData = await greetUser();
        print('There is a user: true');
        return userData;
    } else {
        print('There is a user: false');
        return 'Wrong credentials';
    }
}