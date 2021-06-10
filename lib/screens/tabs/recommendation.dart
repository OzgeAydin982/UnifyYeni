import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';
import 'package:flutter/services.dart';
import 'package:unify_app/routing/routes.dart';
import 'package:unify_app/utils/color.dart';
import 'package:unify_app/utils/globals.dart' as globals;
class RecommendationPage extends StatefulWidget {
  @override
  _RecommendationPageState createState() => _RecommendationPageState();
}
class UserNameInput{
  final String userName;

  UserNameInput(this.userName);
}

class _RecommendationPageState extends State<RecommendationPage> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
  void SetDataAndOpenRec(){
    if(myController.text != null && myController.text.length > 0){
      globals.inputdata = UserNameInput(myController.text);
      Navigator.pushNamed(context, GetRecomIntViewRoute);
    }else{
      //TODO: Error text doldur diye
    }
  }
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
          "Please Enter Your Twitter Username",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),

      ],
    );

    final twitterUsernameField = TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: 'Twitter Username',
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(
          LineIcons.twitter,
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
          children: <Widget>[twitterUsernameField],
        ),
      ),
    );

    final getRecomBtn = Container(
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
        onPressed: SetDataAndOpenRec,
        color: Colors.white,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(7.0),
        ),
        child: Text(
          'Get Recommendation',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20.0,
          ),
        ),
      ),
    );


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
              getRecomBtn,
            ],
          ),
        ),
      ),
    );
  }
}