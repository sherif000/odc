import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc/home_screen/view/home_page/home.dart';
import 'package:odc/login_screen/controller/login_provider/provider.dart';
import 'package:odc/register_screen/view/register_page.dart';
import 'package:provider/provider.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formKey=GlobalKey<FormState>();
  TextEditingController _emailController=TextEditingController();
  TextEditingController _PassController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<Login_providerProvider>(
  builder: (context, provider, child) {
  return Form(
      key: formKey,
      child: SafeArea(child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Align(
                child: Image.asset("images/image 68 (Traced).png", height: 100),
                alignment: Alignment.topRight),

            Center(child: Image.asset('images/Desktop Screenshot 2022.08.16 - 09.34.02.05.png',)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Register_page()));
                  }, child: AutoSizeText(
                    'Sign Up',style: TextStyle(color: Colors.grey,fontSize: 20),
                  )),
                  TextButton(onPressed: (){}, child: Column(
                    children: [
                      AutoSizeText(
                        'Login',style: TextStyle(color: Colors.green,fontSize: 20),
                      ),
                      Divider(color: Colors.green,thickness: 0.5,),
                    ],
                  )),



                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Text('email'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                  ),

                ),
                validator: (val){
                  if(val!.isEmpty){
                    return 'Enter your email';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Text('password'),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
              child: TextFormField(
                controller: _PassController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                  ),

                ),
                obscureText: true,
                validator: (val){
                  if(val!.isEmpty){
                    return 'Enter your password';
                  }
                  return null;
                },
              ),
            ),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
  child:   TextButton(
        style: TextButton.styleFrom(backgroundColor: Color(0xff1ABC00)),
        onPressed: (){
          

if (formKey.currentState!.validate()) {
  provider.login(email: _emailController.text,pass: _PassController.text);
  Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));

}


        }, child: Text('Login',style: TextStyle(color: Colors.white),)),
),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child:Divider(color: Colors.grey,thickness: 0.5,height:50,endIndent: 10,indent: 10)),
                Text('or continue with',style: TextStyle(color: Colors.grey),),
                Expanded(child: Divider(color: Colors.grey,thickness: 0.5,height: 50,endIndent: 10,indent: 10,)),

              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               TextButton(onPressed: (){}, child:  Image.asset('images/Desktop Screenshot 2022.08.16 - 5502.05.png',height:30,width: 20, ),),
                TextButton(onPressed: (){}, child: Image.asset('images/Desktop Screenshot 2022.08.16 - 0223235.png'),)
              ],
            ),
            Align(
                child: Image.asset("images/image 68 (Traced) (1).png", height: 100),
                alignment: Alignment.bottomLeft),

          ],
        ),


      )),
    );
  },
);
  }
}
