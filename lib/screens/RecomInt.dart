import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:unify_app/models/RecomInt.dart';
import 'package:http/http.dart' as http;

import 'tabs/recommendation.dart';
import 'package:unify_app/utils/globals.dart' as globals;



class RecomIntPage extends StatefulWidget {

  UserNameInput _userNameInput ;
  @override
  _RecomIntPageState createState() => _RecomIntPageState();
}

class _RecomIntPageState extends State<RecomIntPage> {
  Future<RecomInt> fetchRecoms( ) async {


    print(":"+jsonEncode(<String, String>{
      'userName': globals.inputdata.userName,
    }));

    final response =
    await http.post(Uri.parse('https://unify-a-p-p.herokuapp.com/users/twUser'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'userName': globals.inputdata.userName,
      }),
    );
    print("CodeSSSSSSSSSSSSSSSSSSSSSSS:" +response.statusCode.toString());
    if (response.statusCode == 200 || response.statusCode == 201) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return RecomInt.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data:' + response.body);
    }
  }
   Future<RecomInt> futureRecom;
  @override
  void initState() {
    super.initState();

  }


  /*void _submitAuthForm(
      String email,
      String password,
      String username,
      bool isLogin,
      BuildContext ctx,
      ) async {
    UserCredential authResult;*/

  @override
  Widget build(BuildContext context) {

    return Row(

        mainAxisSize: MainAxisSize.max,
        children: [Expanded(
          flex: 2, // 20%
          child: Container(),
        ),Expanded(
          flex: 6,

      child: FutureBuilder<RecomInt>(
        future: fetchRecoms(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {

            String data = "";
            for(int i = 0; i < snapshot.data.result.length; i++){
              if(i != snapshot.data.result.length - 1)
                data += snapshot.data.result[i] + ", ";
              else
                data += snapshot.data.result[i];
            }
            return Text(data, style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.5,color: Colors.white));


            return Text(snapshot.data.result[0]);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      ),
    ),
          Expanded(
            flex: 2, // 20%
            child: Container(),
          ),
        ]);
  }
  }
