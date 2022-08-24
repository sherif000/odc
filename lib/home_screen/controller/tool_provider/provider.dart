import 'package:flutter/material.dart';
import 'package:odc/home_screen/model/tool_model/tool_model.dart';
import 'package:odc/home_screen/service/tool_service/tool_service.dart';

class Tool_providerProvider extends ChangeNotifier {
  List<Tool> tool=[];
  Future all()async{
    try{
      tool=(await RemoteService.fetchTool()) as List<Tool>;

    }
    catch(e){
      print(e);
    }

    notifyListeners();
  }


}
