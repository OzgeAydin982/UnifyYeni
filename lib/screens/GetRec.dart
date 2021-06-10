import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';
import 'package:flutter/services.dart';
import 'package:unify_app/routing/routes.dart';
import 'package:unify_app/utils/color.dart';

class GetRecPage extends StatefulWidget {
  @override
  _GetRecPageState createState() => _GetRecPageState();
}

class _GetRecPageState extends State<GetRecPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Change Status Bar Color
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: primaryColor),
    );
    final pageTitle = Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Our Recommendations for You!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),

      ],
    );

    final recField = TextFormField(
      decoration: InputDecoration(
        labelText: '',
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(
          LineIcons.twitter_square,
          color: Colors.white,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );

    final recSecField = TextFormField(
      decoration: InputDecoration(
        labelText: '',
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(
          LineIcons.twitter_square,
          color: Colors.white,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );

    final recThirdField = TextFormField(
      decoration: InputDecoration(
        labelText: '',
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(
          LineIcons.twitter_square,
          color: Colors.white,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );

    final recomForm = Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[recField, recSecField, recThirdField],
        ),
      ),
    );

    /*final getRecomBtn = Container(
      margin: EdgeInsets.only(top: 40.0),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        border: Border.all(color: Colors.white),
        color: Colors.white,
      ),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => Navigator.pushNamed(context, GetRecViewRoute),
        color: Colors.white,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(7.0),
        ),
        child: Text(
          '',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20.0,
          ),
        ),
      ),
    );*/


    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 150.0, left: 30.0, right: 30.0),
          decoration: BoxDecoration(gradient: primaryGradient),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              pageTitle,
              recomForm,
              //getRecomBtn,
            ],
          ),
        ),
      ),
    );
  }
}