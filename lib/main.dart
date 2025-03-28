import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final int x =
      0; //final keyword before any variable makes it immutable, means the variable can't be changed once it's assigned a value.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Lottery App',
            style: TextStyle(
              fontFamily: 'Urbanist Semibold',
              color: Color(0xFF3F008D),
            ),
          ),
          backgroundColor: Color(0xFFEDDEFF),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Your lucky number is: ' + x.toString(),
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Urbanist Regular',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FAB pressed!');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
