import 'package:flutter/material.dart';
import 'package:personality_quiz/models/PageTransition.dart';
import '/models/detail.dart';
import 'secondscreen.dart';
import '/widgets/abdulkalam.dart';
import '/widgets/alberteinstien.dart';
import '/widgets/stevejobs.dart';
import '/widgets/billgates.dart';
import '/widgets/warrenbuffet.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Author> authors = [
    Author(
      authortxt: 'A.P.J.Abdul Kalam',
    ),
    Author(
      authortxt: 'Albert Einstein',
    ),
    Author(
      authortxt: 'Steave Jobs',
    ),
    Author(
      authortxt: 'Bill Gates',
    ),
    Author(
      authortxt: 'Warren Buffet',
    ),
  ];
  /* selectAuthor(authortxt) {
      if (authortxt == 'Albert Einstein') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AlbertEinstein()),
        );
      }
    }
*/
  Widget authorTemplate(author) {
    return (Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        InkWell(
            child: Card(
              elevation: 10,
              color: Colors.blueGrey[400],
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: Container(
                height: 100.0,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      author.authortxt,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                      ),
                      //textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              if (author.authortxt == 'Albert Einstein') {
                /*Navigator.push(
                    context, PageTransition(widget: AlbertEinstein()));*/
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlbertEinstein()),
                );
              } else if (author.authortxt == 'A.P.J.Abdul Kalam')
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Abdulkalam()),
                );
              else if (author.authortxt == 'Bill Gates')
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BillGates()),
                );
              else if (author.authortxt == 'Steave Jobs')
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SteveJobs()),
                );
              else if (author.authortxt == 'Warren Buffet')
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WarrenBuffet()),
                );
            }),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.menu),
                splashColor: Colors.lightBlueAccent,
                onPressed: () {
                  //
                }),
            title: Text('Motivational Quotes'),
            backgroundColor: Colors.blueGrey[600],
            centerTitle: true),
        body: Container(
          height: deviceHeight * 1.00,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/background1.jpg'),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: authors.map((authortxt) {
                return authorTemplate(authortxt);
              }).toList(),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blueGrey[600],
            splashColor: Colors.lightBlueAccent,
            child: Icon(Icons.info_sharp, color: Colors.white24),
            onPressed: () {
              Navigator.push(context, PageTransition(widget: SecondScreen()));
            }),
      ),
    );
  }
}
