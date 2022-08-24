import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../controller/formus_provider/provider.dart';
class NewPostScreen extends StatefulWidget {
  const NewPostScreen({Key? key}) : super(key: key);

  @override
  _NewPostScreenState createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {
  late Future _future;
  Future<void> prepareData() async {
    var formus_provider = Provider.of<Formus_providerProvider>(context, listen: false);
    await formus_provider.formus(title: titleController.text, image:imageController.text , description: descriptionController.text);
  }

  void initState() {
    _future=prepareData();
    super.initState();
  }
  play(){
    return  Container(height: 100,width: MediaQuery.of(context).size.width,margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        children: [
          Text('choose profile photo',style: TextStyle(fontSize: 20),),
          SizedBox(height: 20,),
          Row(
            children: [
              FlatButton.icon(
                onPressed: (){
                  takePhoto(ImageSource.camera);
                }, label: Text('Camera'), icon: Icon(Icons.camera),),
            ],
          ),
        ],
      ),


    );
  }
  late PickedFile imageFile;
  void takePhoto(ImageSource source)async{
    final pickedFile= await piker.getImage(source:source );
    setState(() {
      imageFile=pickedFile!;
    });
  }
  final ImagePicker piker=ImagePicker();
  TextEditingController titleController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController imageController=TextEditingController();

  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key:  formKey,
      child: ListView(
        children: [
          Stack(
            children: [


              InkWell(
                onTap: (){
                  showModalBottomSheet(
                    context: context, builder: ((builder)=>play()),);


                },
                child: CircleAvatar(
                  radius: 40,
                  child: Icon(Icons.person,size: 30,),
                ),
              ),
              Positioned(
                  right:5 ,
                  bottom: 5,
                  child: Icon(Icons.camera_alt)),

            ],
          ) ,
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text('title'),
          ),
          TextFormField(
            controller: titleController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
              ),

            ),
            validator: (val){
              if(val!.isEmpty){
                return 'Enter title';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text('Description'),
          ),
          TextFormField(
            controller: descriptionController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
              ),

            ),
            validator: (val){
              if(val!.isEmpty){
                return 'Enter Description';
              }
              return null;
            },
          ),

          TextButton(
              style: TextButton.styleFrom(backgroundColor: Color(0xff1ABC00)),
              onPressed: (){
                if (formKey.currentState!.validate()) {
                }
              }, child: Text('Post',style: TextStyle(color: Colors.white),)),

        ],
      ),
    );
  }
}
