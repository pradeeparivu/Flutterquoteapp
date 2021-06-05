import 'package:flutter/material.dart';
import 'package:personality_quiz/mainscreen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              splashColor: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
                );
              }),
          title: Text(
            'About Us',
            style: TextStyle(color: Colors.white70),
          ),
          backgroundColor: Colors.blueGrey[400],
        ),
        body: Container(
          width: deviceWidth * 1.00,
          height: deviceHeight * 1.00,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/background1.jpg'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This is beta version. Please Stay tuned for release of full version!!',
                style: TextStyle(
                  color: Colors.white70,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
