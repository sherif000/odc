import 'package:flutter/material.dart';
import 'package:odc/home_screen/controller/plant_provider/provider.dart';
import 'package:provider/provider.dart';
class PlantScreen extends StatefulWidget {
  const PlantScreen({Key? key}) : super(key: key);

  @override
  _PlantScreenState createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
  late Future _future;
  Future<void> prepareData() async {
    var plant_provider = Provider.of<Plant_providerProvider>(context, listen: false);
    await plant_provider.plantProvider();
  }

  void initState() {
    _future=prepareData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Plant_providerProvider>(
  builder: (context, provider, child) {
  return Scaffold(
      backgroundColor: Colors.white,
      body: (provider.plant.isEmpty)?Center(
        child: CircularProgressIndicator(),):ListView(
        children: [],
      )
    );
  },
);
  }
}
