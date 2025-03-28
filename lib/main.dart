import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  int x =
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
            x++;
            print(x.toString());
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}




/*
NOTES:
- stateless widgets dont update a component's state on runtime, they dont show the updated state of a variable/component as it changes on the spot...we have to hot reload our app to see the changes, because hot reload rebuilds our app/widgets from the Build method, which ultimately reflects the updated state of our app.



*/