import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:unify_app/data/dummy_rec_data.dart';
import 'package:unify_app/models/RecomInt.dart';
import 'package:unify_app/utils/color.dart';
import 'package:http/http.dart' as http;

Future<RecomInt> fetchRecoms() async {
  final response =
  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return RecomInt.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class RecommendationPage extends StatefulWidget {
  @override
  _RecommendationPageState createState() => _RecommendationPageState();
}

class _RecommendationPageState extends State<RecommendationPage> {

   Future<RecomInt> futureRecom;

  @override
  void initState() {
    super.initState();
    futureRecom = fetchRecoms();
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
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: FutureBuilder<RecomInt>(
        future: futureRecom,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.title);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      )
    );
  }
  }
