import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

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
        body: RandomWord(),
      ),
    );
  }
}

class RandomWordState extends State<RandomWord> {
  @override
  Widget build(BuildContext context) {
    final _pair = WordPair.random();
    return Center(child: Text(_pair.asPascalCase));
  }

}

class RandomWord extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordState();
  }

}