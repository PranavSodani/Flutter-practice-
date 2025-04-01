import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const header = 'Shopping List';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: header,
      home: MyHomePage(title: header),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: const snackBarDemo(),
    );
  }
}

// ignore: camel_case_types
class snackBarDemo extends StatelessWidget {
  const snackBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(content: Text('You have chosen eggs'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text('Eggs'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(content: Text('You have chosen Flour'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text('Flour'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(content: Text('You have chosen chocolate chips'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text('Chocolate Chips'),
          ),
        ],
      ),
    );
  }
}
