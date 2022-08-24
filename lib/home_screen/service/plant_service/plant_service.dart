import '../../../core/base_url.dart';
import '../../model/plant_model/plant_model.dart';
import 'package:http/http.dart'as http;


class RemoteService{

  static Future<Plant> fetchPlant()async{
  http.Response response=await http.get(Uri.parse('$baseUrl/plants'));
  headers: <String, String>{
  'Content-Type': 'application/json; char=UTF-8'
  };
  var body =response.body;
  if (response.statusCode == 200) {
  return plantFromJson(body);

  } else {
  throw Exception('wrong');
  }

  }

  }
