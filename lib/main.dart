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
      debugShowCheckedModeBanner: false,
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
  final _suggestions = <WordPair>[];

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final _index = i ~/ 2;
        if(_index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }

        return _buildRow(_suggestions[_index]);
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return _buildSuggestions();
  }

}

class RandomWord extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordState();
  }

}