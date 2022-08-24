import 'package:flutter/material.dart';
import 'package:odc/forums/model/forums_model.dart';

class Formus_providerProvider extends ChangeNotifier {

  Future formus({required String title,required String image,required String description})async{

    try{
      await RemoteService.formus(title, image, description);
    }
    catch(e){
      print(e);
    }
    notifyListeners();

  }


}
