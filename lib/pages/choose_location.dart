import 'package:flutter/material.dart';
class choose_location extends StatefulWidget {
  const choose_location({Key? key}) : super(key: key);

  @override
  State<choose_location> createState() => _choose_locationState();
}

class _choose_locationState extends State<choose_location> {

  @override
  Widget build(BuildContext context) {
    print("build method run");
    return Scaffold(
      backgroundColor: Colors.grey[250],
      appBar: AppBar(
        title: Text("choose location"),
        centerTitle: true,
        elevation: 0.0,
      ),

    );
  }
}
