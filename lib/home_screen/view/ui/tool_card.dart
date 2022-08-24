import 'package:flutter/material.dart';
import 'package:odc/home_screen/model/tool_model/tool_model.dart';
class ToolCart extends StatefulWidget {
  const ToolCart({Key? key}) : super(key: key);

  @override
  _ToolCartState createState() => _ToolCartState();
}

class _ToolCartState extends State<ToolCart> {
  late final Tool tool;
  late int num_Card;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          Row(
            children: [
              Image.network(tool.data.imageurl),
              Row(
                children: [
                  Container(
                    child: TextButton(
                      onPressed: (){},
                      child: Icon(Icons.remove),
                    ),
                  ),
                  Text('$num_Card'),
                  Container(
                    width: 16,
                    height: 16,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xffF7F6F7)
                      ),
                      onPressed: (){},
                      child: Icon(Icons.add),
                    ),
                  ),


                ],
              ),
              Text(
                  '${tool.data.name}',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
              Text(
                '${tool.data.price}',style: TextStyle(
                  fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold
              ),),
              TextButton(
                  style: TextButton.styleFrom(backgroundColor: Color(0xff1ABC00)),
                  onPressed: (){}, child: Text(
                'Add To Cart',style: TextStyle(fontSize: 20,color: Colors.white),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
