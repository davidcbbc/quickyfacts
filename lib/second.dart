//Second page

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickyfacts/api.dart';

class Second extends StatefulWidget {
  String
      type; // this variable has the type of the screen ( math , random , year , etc ...)
  String iconUrl;
  Second(this.type,this.iconUrl);
  @override
  State<StatefulWidget> createState() => SecondState(this.type,this.iconUrl);
}

class SecondState extends State<Second> {
  String type;
  String message;
  String month;
  String day;
  String iconUrl;
  static final _formKey = GlobalKey<FormState>();
  SecondState(this.type,this.iconUrl);

  @override
  Widget build(BuildContext context) {



   final year = TextFormField(
      keyboardType: TextInputType.number,
      maxLength: 4,
      cursorColor: Colors.black,
      autofocus: false,
      initialValue: '',
      validator: (value) {
        if (value.isEmpty) return "Please enter a year";
      },
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        hintText: 'Year',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      onSaved: (value) {
        print("year value $value saved!");
        message = '/$value';
      },
    );



   final trivia = TextFormField(
      keyboardType: TextInputType.number,
      cursorColor: Colors.black,
      autofocus: false,
      initialValue: '',
      validator: (value) {
        if (value.isEmpty) return "Please enter a number";
      },
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        hintText: 'Number',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      onSaved: (value) {
        print("trivia value $value saved!");
        message = '/$value';
      },
    );




    final dayT = TextFormField(
      maxLength: 2,
      keyboardType: TextInputType.number,
      cursorColor: Colors.black,
      autofocus: false,
      initialValue: '',
      validator: (value) {
        if (value.isEmpty) return "Please enter a day";
        if (value.isNotEmpty) {
          if (int.parse(value) > 31 || int.parse(value) <= 0)
            return "Enter a valid day";
        }
      },
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        hintText: 'Day',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      onSaved: (value) {
        print("Day value $value saved!");
        day = value;
      },
    );

    final math = TextFormField(
      keyboardType: TextInputType.number,
      cursorColor: Colors.black,
      autofocus: false,
      initialValue: '',
      validator: (value) {
        if (value.isEmpty) return "Please enter a number";
      },
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        hintText: 'Number',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      onSaved: (value) {
        print("Math value $value saved!");
        message = '/$value';
      },
    );

    final monthT = TextFormField(
      maxLength: 2,
      keyboardType: TextInputType.number,
      cursorColor: Colors.black,
      autofocus: false,
      initialValue: '',
      validator: (value) {
        if (value.isEmpty) return "Please enter a month";
        if (value.isNotEmpty) {
          if (int.parse(value) > 12 || int.parse(value) <= 0)
            return "Enter a valid month";
        }
      },
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        hintText: 'Month',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      onSaved: (value) {
        print("Month value $value saved!");
        month = value;
      },
    );
    final formAux = Builder(
      //contem o login e a password
      builder: (context) => Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            type == 'math' ? math : Text(""),
            SizedBox(
              height: 15.0,
            ),
            type == 'date' ? dayT : Text(""),
            SizedBox(
              height: 15.0,
            ),
            type == 'date' ? monthT : Text(""),
            SizedBox(
              height: 15.0,
            ),
            type == 'trivia' ? trivia : Text(""),
            SizedBox(height: 15,),
            type == 'year' ? year : Text(""),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0)),
              height: 30,
              width: 20,
              child: FlatButton(
                child: Text("Get information"),
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    try {
                      // TODO adicionar check connectivity
                      if (type == 'date') message = '/$month/$day';
                      if (type == 'random') {
                        // random
                        message = '/random';
                        type = 'trivia';
                      }
                      String hey = await getMessage(message, type);
                      _showDialog(type, hey);
                    } on SocketException {
                      _showDialog('Ups!', 'Something went wrong!');
                    }
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            type,
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(iconUrl, height: 100,),
              formAux],
          ),
        ));
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
