import 'package:flutter/material.dart';

void main() {
  runApp(MyGameApp());
}

class MyGameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Set up your Material 3 theme here if applicable
      ),
      home: MyGameScreen(),
    );
  }
}

class MyGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Game Over',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                      'Restart Game',
                      style: TextStyle(color: Colors.red),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
