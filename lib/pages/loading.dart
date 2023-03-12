import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {


  void setupworldtime() async{
    World_time instance=World_time(location:'Berlin',flag:'germeny.pjpg' ,url:'Europe/Berlin');
    await instance.gettime();

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupworldtime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text("loading"),
      ),

    );
  }
}
