import 'package:flutter/material.dart';
import 'package:odc/my_profile/controller/profile_provider/provider.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController secondNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Consumer<Profile_providerProvider>(
      builder: (context, provider, child) {
        return Form(
          key: formKey,

          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text('My profile', style: TextStyle(color: Colors.black),),
            ),
            body: ListView(
              children: [
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text('personal information', style: TextStyle(
                            fontSize: 20, color: Colors.black),)),
                    TextButton(
                        onPressed: () {},
                        child: Text('profile picture', style: TextStyle(
                            fontSize: 20, color: Colors.black),)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'first name', style: TextStyle(color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: firstNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'second name', style: TextStyle(color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: secondNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('email', style: TextStyle(color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('address', style: TextStyle(color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: addressController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                    ),
                  ),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.greenAccent),

                    onPressed: () {
                      if (formKey.currentState!.validate()) {
provider.prfile(firstName: firstNameController.text, secondName:secondNameController.text, email: emailController.text, address: addressController.text);


                      }
                    }

                    , child: Text('Save', style: TextStyle(
                    fontSize: 20, color: Colors.white
                ),))
              ],
            ),
          ),
        );
      },
    );
  }
}
