import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:quickyfacts/api.dart';
import 'package:quickyfacts/second.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quicky Facts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Quicky Facts'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {





  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.info , color: Colors.black,),
          onPressed: () {
            _showDialog("Quicky Facts", "This app gives you facts about the numbers you put in it , just type the numbers and the facts will come :) ");

          },
        ),
        backgroundColor: Colors.white,
        title: Text(widget.title ,  style: TextStyle(color: Colors.black),),
      ),
      body: Center( 
        child: ListView(
          children: <Widget>[
            AvatarGlow(
              // math
            startDelay: Duration(milliseconds: 1000),
            glowColor: Colors.grey,
            endRadius: 90.0,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: true,
            repeatPauseDuration: Duration(milliseconds: 100),
            child: FlatButton(
              child: Material(
              elevation: 8.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: Image.network(
                    'https://cdn3.iconfinder.com/data/icons/business/16/calculator_math-512.png'),
                radius: 40.0,
              ),
            ),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Second('math','https://cdn3.iconfinder.com/data/icons/business/16/calculator_math-512.png')));
              },
            ),
          ),
          AvatarGlow(
            // date
            startDelay: Duration(milliseconds: 1000),
            glowColor: Colors.grey,
            endRadius: 90.0,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: true,
            repeatPauseDuration: Duration(milliseconds: 100),
            child: FlatButton(
              child: Material(
              elevation: 8.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: Image.network(
                    'https://cdn3.iconfinder.com/data/icons/unicons-vector-icons-pack/32/calendar2-512.png'),
                radius: 40.0,
              ),
            ),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Second('date','https://cdn3.iconfinder.com/data/icons/unicons-vector-icons-pack/32/calendar2-512.png')));
              },
            ),
          ),
          AvatarGlow(
            // random
            startDelay: Duration(milliseconds: 1000),
            glowColor: Colors.grey,
            endRadius: 90.0,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: true,
            repeatPauseDuration: Duration(milliseconds: 100),
            child: FlatButton(
              child: Material(
              elevation: 8.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: Image.network(
                    'http://cdn.onlinewebfonts.com/svg/img_237776.png'),
                radius: 40.0,
              ),
            ),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Second('random','http://cdn.onlinewebfonts.com/svg/img_237776.png')));
              },
            ),
          ),
          AvatarGlow(
            // trivia
            startDelay: Duration(milliseconds: 1000),
            glowColor: Colors.grey,
            endRadius: 90.0,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: true,
            repeatPauseDuration: Duration(milliseconds: 100),
            child: FlatButton(
              child: Material(
              elevation: 8.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: Image.network(
                    'https://i1.wp.com/nyctrivialeague.com/wp-content/uploads/2017/11/game-icon.png'),
                radius: 40.0,
              ),
            ),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Second('trivia','https://i1.wp.com/nyctrivialeague.com/wp-content/uploads/2017/11/game-icon.png')));
              },
            ),
          ),
          AvatarGlow(
            // year
            startDelay: Duration(milliseconds: 1000),
            glowColor: Colors.grey,
            endRadius: 90.0,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: true,
            repeatPauseDuration: Duration(milliseconds: 100),
            child: FlatButton(
              child: Material(
              elevation: 8.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: Image.network(
                    'https://cdn1.iconfinder.com/data/icons/media-icons-23/100/calendar-512.png'),
                radius: 40.0,
              ),
            ),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Second('year','https://cdn1.iconfinder.com/data/icons/media-icons-23/100/calendar-512.png')));
              },
            ),
          ),
          ],
        ),
      ),
    );
    
  }


    void _showDialog(String title, String description) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(title),
          content: new Text(description),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
