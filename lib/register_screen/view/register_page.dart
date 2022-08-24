import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:odc/home_screen/view/home_page/home.dart';
import 'package:odc/login_screen/view/login_page.dart';
import 'package:odc/register_screen/controller/signup_provider/provider.dart';
import 'package:provider/provider.dart';
class Register_page extends StatefulWidget {
  const Register_page({Key? key}) : super(key: key);

  @override
  _Register_pageState createState() => _Register_pageState();
}

class _Register_pageState extends State<Register_page> {
  var formKey=GlobalKey<FormState>();
  TextEditingController _firstnameController =TextEditingController();
  TextEditingController _secondnamecontroller=TextEditingController();
  TextEditingController _emailController =TextEditingController();
  TextEditingController _passController =TextEditingController();
  TextEditingController _confirmPassword=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<Signup_providerProvider>(
  builder: (context, signProvider, child) {
  return Form(
        key: formKey,
        child: ListView(
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
                  }, child: Column(
                    children: [
                      AutoSizeText(
                        'Sign Up',style: TextStyle(color: Colors.green,fontSize: 20),
                      ),
                      Divider(color: Colors.green,thickness: 0.5,),
                    ],
                  )),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));

                  }, child: AutoSizeText('login',style: TextStyle(fontSize: 20,color: Colors.grey),)),



                ],
              ),
            ),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Column(
      children: [
        Text('First Name'),
        Container(
          height: 50,
          width: 150,
          child: TextFormField(
            controller: _firstnameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
              ),

            ),
            validator: (val){
              if(val!.isEmpty){
                return 'Enter your first name';
              }
              return null;
            },
          ),
        ),
      ],
    ),
    Column(
      children: [
        Text('Second Name'),
        Container(
          height: 50,
          width: 150,
          child: TextFormField(
            controller: _secondnamecontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
              ),

            ),
            validator: (val){
              if(val!.isEmpty){
                return 'Enter your seconde name';
              }
              return null;
            },
          ),
        ),
      ],
    ),
  ],
),

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
  child:   Text('email'),
),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
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
                controller: _passController,
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
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Text('confirm Password'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
              child: TextFormField(
                controller: _confirmPassword,
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
                      signProvider.Signup(_firstnameController.text,_secondnamecontroller.text,_emailController.text,_passController.text);
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));

                    }
                    
                    
                  }, child: Text('Sign Up',style: TextStyle(color: Colors.white),)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?',style: TextStyle(
                  color: Colors.grey
                ),),
                TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));

                }, child: Text('Sign in',style: TextStyle(color: Colors.green,fontSize: 20),)),
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
      );
  },
),
    ));
  }
}
