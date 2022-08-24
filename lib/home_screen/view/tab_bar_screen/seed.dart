import 'package:flutter/material.dart';
import 'package:odc/home_screen/controller/all_provider/provider.dart';
import 'package:provider/provider.dart';
class SeedScreen extends StatefulWidget {
  const SeedScreen({Key? key}) : super(key: key);

  @override
  _SeedScreenState createState() => _SeedScreenState();
}

class _SeedScreenState extends State<SeedScreen> {
  late Future _future;
  Future<void> prepareData() async {
    var seed_provider = Provider.of<All_providerProvider>(context, listen: false);
    await seed_provider.all();
  }

  void initState() {
    _future=prepareData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<All_providerProvider>(
  builder: (context, provider, child) {
  return Scaffold(
      backgroundColor: Colors.white,
      body: (provider.seed.isEmpty)?Center(
        child: CircularProgressIndicator(),):ListView(
        children:[],
      )
    );
  },
);
  }
}
