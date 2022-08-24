import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:odc/core/base_url.dart';
import 'package:odc/home_screen/model/seed_model/seed.dart';

class RemoteService{
  static Future<Seed> fetchSeed()async{
http.Response response=await http.get(Uri.parse('$baseUrl/seeds'));
headers: <String, String>{
  'Content-Type': 'application/json; char=UTF-8'
};
  var body =response.body;
if (response.statusCode == 200) {
  return seedFromJson(body);

} else {
  throw Exception('wrong');
}
    
  }

}