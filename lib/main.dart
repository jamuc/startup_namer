import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

main(List<String> args) {
  runApp(StartupNamer());
}

class StartupNamer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final words = WordPair.random();
    return MaterialApp(
      title: "Startup Namer",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Startup Namer"),
        ),
        body: Center(child: Text(words.asPascalCase),),
      ),
    );
  }
}