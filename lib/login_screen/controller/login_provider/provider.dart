import 'package:flutter/material.dart';
import 'package:odc/login_screen/model/login_api.dart';

class Login_providerProvider extends ChangeNotifier {
Future login({required String email,required String pass})async{
  try{
    await RemoteService.login(email, pass);
  }
  catch(e){
    print(e);
  }
notifyListeners();
}

}
