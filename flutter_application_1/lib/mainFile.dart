import 'package:flutter/material.dart';

class mainFile extends StatelessWidget {
  const mainFile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Home Page')),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Text('Hello World'),
            Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
              onPressed: () {
                print('Click!!!');
              },
              child: Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}
