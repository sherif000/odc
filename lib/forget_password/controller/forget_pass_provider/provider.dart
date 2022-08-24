import 'package:flutter/material.dart';
import 'package:odc/forget_password/model/forget_pass_api.dart';

class Forget_pass_providerProvider extends ChangeNotifier {

  Future forgetPass(String email) async {
    try {
      await RemoteService.forgetPass(email);
    }
    catch (e) {
      print(e);
    }
    notifyListeners();
  }
}
