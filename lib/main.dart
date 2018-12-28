import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(StartupNamer());
}

class StartupNamer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Startup Namer",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Startup Namer"),
        ),
        body: Center(child: Text("This is the body"),),
      ),
    );
  }
}