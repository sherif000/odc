import 'package:flutter/material.dart';

import '../../model/plant_model/plant_model.dart';
import '../../service/plant_service/plant_service.dart';

class Plant_providerProvider extends ChangeNotifier {
List<Plant> plant=[];
Future plantProvider()async{
try{
  plant=(await RemoteService.fetchPlant()) as List<Plant>;

}
catch(e){
  print(e);
}
notifyListeners();
}



}
