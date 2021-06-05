import 'package:flutter/material.dart';
import '/mainscreen.dart';
import '/models/detail.dart';

class SteveJobs extends StatefulWidget {
  @override
  _SteveJobsState createState() => _SteveJobsState();
}

class _SteveJobsState extends State<SteveJobs> {
  List<Quote> quotes = [
    Quote(
        text:
            'All our dreams can come true, if we have the courage to pursue them.',
        author: 'Walt Disney'),
    Quote(
        text: 'The secret of getting ahead is getting started.',
        author: 'Mark Twain'),
    Quote(
        text: 'Don’t Let Yesterday Take Up Too Much Of Today.',
        author: 'Will Rogers'),
    Quote(
        text:
            'Failure Will Never Overtake Me If My Determination To Succeed Is Strong Enough.',
        author: 'Og Mandino'),
    Quote(
        text: 'We May Encounter Many Defeats But We Must Not Be Defeated.',
        author: 'Maya Angelou'),
    Quote(
        text: 'We Generate Fears While We Sit. We Overcome Them By Action.',
        author: 'Dr. Henry Link'),
    Quote(
        text: 'Do What You Can With All You Have, Wherever You Are.',
        author: 'Theodore Roosevelt'),
    Quote(
        text:
            'You Are Never Too Old To Set Another Goal Or To Dream A New Dream.',
        author: 'C.S. Lewis'),
    Quote(
        text: 'To See What Is Right And Not Do It Is A Lack Of Courage.',
        author: 'Confucius'),
    Quote(
        text: 'Reading Is To The Mind, As Exercise Is To The Body.',
        author: 'Brian Tracy'),
    Quote(
        text:
            'Things Work Out Best For Those Who Make The Best Of How Things Work Out.',
        author: 'John Wooden'),
    Quote(
        text: 'A Room Without Books Is Like A Body Without A Soul.',
        author: 'Marcus Tullius Cicero'),
    Quote(
        text:
            'Fake It Until You Make It! Act As If You Had All The Confidence You Require Until It Becomes Your Reality.',
        author: 'Brian Tracy'),
  ];

  Widget quoteTemplate(quote) {
    return (Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        InkWell(
          child: Card(
            elevation: 10,
            color: Colors.blueGrey[400],
            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
            child: Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    quote.text,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 12.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    //  crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        '-${quote.author}',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.start,
                      ),
                      IconButton(
                        onPressed: () {
//
                        },
                        icon: Icon(Icons.favorite_outline_sharp),
                        splashColor: Colors.lightBlueAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    // double deviceHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
                splashColor: Colors.lightBlueAccent,
                icon: Icon(Icons.arrow_back_rounded, color: Colors.white70),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                }),
            title: Text('Steve Jobs'),
            backgroundColor: Colors.blueGrey[600],
            centerTitle: true),
        body: Container(
          //       height: deviceHeight * 1.00,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/background1.jpg'),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: quotes.map((quote) {
                return quoteTemplate(quote);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
