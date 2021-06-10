import 'package:flutter/material.dart';

import 'package:unify_app/theme.dart';
import 'package:unify_app/routing/routes.dart';
import 'package:unify_app/routing/router.dart' as router;

//import 'package:firebase_auth/firebase_auth.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unify App',
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      onGenerateRoute: router.generateRoute,
      initialRoute: landingViewRoute,
      //home: StreamBuilder(stream: F)
    );
  }
}