import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:odc/core/base_url.dart';

class RemoteService{
  static Future formus(String title,String image,String description)async{
    String url ='$baseUrl/forums';
    http.Response response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; char=UTF-8',
      },
      body: jsonEncode(
        {
          "title":title,
          "description":description,
          "imageBase64":image,
        },
      ),
    );
    var body = jsonDecode(response.body);

    if (response.statusCode == 200) {
      print(body);

    } else {
      print('failed == 400 ******');
    }
    return body;


  }

}