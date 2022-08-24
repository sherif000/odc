import 'package:flutter/material.dart';
import 'package:odc/my_profile/model/profile_model.dart';

class Profile_providerProvider extends ChangeNotifier {
Future prfile({required String firstName,required String secondName,required String email,required String address})async{
try{
  await RemoteService.profile(firstName, secondName, email, address);


}
catch(e){
  print(e);
}
notifyListeners();
}
}
