import 'package:flutter/material.dart';
import 'package:odc/register_screen/model/signup_api.dart';

class Signup_providerProvider extends ChangeNotifier {


  Future Signup(String firstname,String lastname,String email,String pass)async{

    try{
      await RemoteService.signup(firstname, lastname, email, pass);
    }
    catch(e){
      print(e);
    }
    notifyListeners();
  }


}
