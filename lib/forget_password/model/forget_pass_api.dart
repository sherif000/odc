import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:odc/core/base_url.dart';

class RemoteService{

 static Future forgetPass(email)async{
   String url='$baseUrl/auth/forgetPassword';
   http.Response response = await http.post(
     Uri.parse(url),
     headers: <String, String>{
       'Content-Type': 'application/json; char=UTF-8',
     },
     body: jsonEncode(
       {
         'email': email,

       },
     ),
   );
   var body = jsonDecode(response.body);


   if (response.statusCode == 200) {
     print('Success =200 ********');
     print(body);



   } else {
     print('failed == 400 ******');
   }
   return body;


 }


}