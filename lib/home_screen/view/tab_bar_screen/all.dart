import 'package:flutter/material.dart';
import 'package:odc/home_screen/controller/all_provider/provider.dart';
import 'package:provider/provider.dart';

class AllScreen extends StatefulWidget {
  const AllScreen({Key? key}) : super(key: key);

  @override
  _AllScreenState createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  late Future _future;
  Future<void> prepareData() async {
    var all_provider = Provider.of<All_providerProvider>(context, listen: false);
    await all_provider.all();
  }

  void initState() {
    _future=prepareData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<All_providerProvider>(
      builder: (context, all_provider, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: (all_provider.seed.isEmpty)?Center(
          child: CircularProgressIndicator(),):ListView(
            children: [],
          ),
        );
      },
    );
  }
}
