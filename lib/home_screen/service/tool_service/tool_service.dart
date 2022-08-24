import 'package:http/http.dart'as http;
import '../../../core/base_url.dart';
import '../../model/tool_model/tool_model.dart';

class RemoteService{

  static Future<Tool> fetchTool()async{
    http.Response response=await http.get(Uri.parse('$baseUrl/tools'));
    headers: <String, String>{
      'Content-Type': 'application/json; char=UTF-8'
    };
    var body =response.body;
    if (response.statusCode == 200) {
      return toolFromJson(body);

    } else {
      throw Exception('wrong');
    }

  }
}