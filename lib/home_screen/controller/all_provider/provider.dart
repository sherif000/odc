import 'package:flutter/material.dart';
import 'package:odc/home_screen/model/seed_model/seed.dart';
import 'package:odc/home_screen/service/seed_service/seed.dart';

class All_providerProvider extends ChangeNotifier {
List<Seed> seed=[];
Future all()async{
  try{
    seed=(await RemoteService.fetchSeed()) as List<Seed>;

  }
  catch(e){
    print(e);
  }

notifyListeners();
}
}
