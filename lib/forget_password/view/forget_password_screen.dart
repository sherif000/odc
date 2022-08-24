import 'package:flutter/material.dart';
import 'package:odc/forget_password/controller/forget_pass_provider/provider.dart';
import 'package:provider/provider.dart';
class ForgetOasswordScreen extends StatefulWidget {
  const ForgetOasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgetOasswordScreenState createState() => _ForgetOasswordScreenState();
}

class _ForgetOasswordScreenState extends State<ForgetOasswordScreen> {
  var formKey=GlobalKey<FormState>();
  TextEditingController _emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<Forget_pass_providerProvider>(
  builder: (context, forgetProvider, child) {
  return Form(
        key: formKey,
        child: ListView(
          children: [
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
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              child:   TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: (){

                    if (formKey.currentState!.validate()) {
                    forgetProvider.forgetPass(_emailController.text);
                    }


                  }, child: Text('Login',style: TextStyle(color: Colors.white),)),
            ),

          ],
        ),
      );
  },
),
    ));
  }
}
