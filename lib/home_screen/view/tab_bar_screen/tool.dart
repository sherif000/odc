import 'package:flutter/material.dart';
import 'package:odc/home_screen/controller/tool_provider/provider.dart';
import 'package:provider/provider.dart';

class ToolScreen extends StatefulWidget {
  const ToolScreen({Key? key}) : super(key: key);

  @override
  _ToolScreenState createState() => _ToolScreenState();
}

class _ToolScreenState extends State<ToolScreen> {
  late Future _future;
  Future<void> prepareData() async {
    var tool_provider = Provider.of<Tool_providerProvider>(context, listen: false);
    await tool_provider.all() ;
  }

  void initState() {
    _future=prepareData();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<Tool_providerProvider>(
      builder: (context, provider, child) {
        return Scaffold(
            backgroundColor: Colors.white,
            body: (provider.tool.isEmpty) ? Center(
              child: CircularProgressIndicator(),) : ListView(
              children: [],
            )
        );
      },
    );
  }
}
