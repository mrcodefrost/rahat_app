import 'package:flutter/material.dart';
import 'package:rahat_app/models/sensor_data.dart';

import 'heart_rate_page.dart';

class HeartLoadingPage extends StatefulWidget {
  @override
  _HeartLoadingPageState createState() => _HeartLoadingPageState();
}

class _HeartLoadingPageState extends State<HeartLoadingPage> {
  @override
  void initState() {
    super.initState();
    getPulseData();
  }

  void getPulseData() async {
    SensorData sensorData = SensorData();
    var completeData = await sensorData.getSensorData();

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HeartRatePage(
                  allData: completeData,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('assets/loading_heart.png'),
        ),
      ),
    );
  }
}
