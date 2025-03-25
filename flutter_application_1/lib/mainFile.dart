import 'package:flutter/material.dart';

class mainFile extends StatefulWidget {
  const mainFile({super.key});
  @override
  _mainFileState createState() => _mainFileState();
}

class _mainFileState extends State<mainFile> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            CircleAvatar(child: Text((_count.toString()),style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),
            const Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
              child: const Text('+'),
            ),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _count = 0;
                });
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
