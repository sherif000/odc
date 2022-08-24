import 'package:flutter/material.dart';
class Empty extends StatefulWidget {
  const Empty({Key? key}) : super(key: key);

  @override
  _EmptyState createState() => _EmptyState();
}

class _EmptyState extends State<Empty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'My Cart',style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black
        ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/Frame.png',width: 250,height: 244,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'your cart is empty',style: TextStyle(
              fontSize: 20,color: Colors.black
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Sorry, the keyword you entered cannot be found, please check again or search with another keyword.',style:
              TextStyle(fontSize: 15,color: Colors.grey),),
          ),
        ],
      ),
    );
  }
}
