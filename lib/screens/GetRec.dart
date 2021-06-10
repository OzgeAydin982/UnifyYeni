import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';
import 'package:flutter/services.dart';
import 'package:unify_app/routing/routes.dart';
import 'package:unify_app/screens/tabs/recommendation.dart';
import 'package:unify_app/utils/color.dart';

class GetRecPage extends StatelessWidget {
@override
Widget build(BuildContext context) {





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
              Text("args.userName"),
              Text("data2"),
              //getRecomBtn,
            ],
          ),
        ),
      ),
    );
  }
}