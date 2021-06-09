import 'package:flutter/material.dart';

import 'package:unify_app/data/dummy_rec_data.dart';
import 'package:unify_app/utils/color.dart';

class RecommendationPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView(
              children: <Widget>[
                Card(child: ListTile(title:
                Text('Recommendations',
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                  ),)
                )),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person_outline_rounded),
                    title: Text(
                      'People/Posts',
                      style: TextStyle(
                        color: primaryDark,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(''),
                    trailing: Icon(Icons.post_add),
                    isThreeLine: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.music_video_sharp),
                    title: Text(
                      'Music',
                      style: TextStyle(
                        color: primaryDark,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(''),
                    //trailing: Icon(Icons.music_video_sharp),
                    isThreeLine: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.event),
                    title: Text(
                      'Events',
                      style: TextStyle(
                        color: primaryDark,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(''),
                    //trailing: Icon(Icons.post_add),
                    isThreeLine: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.movie),
                    title: Text(
                      'Movies/Tv Series',
                      style: TextStyle(
                        color: primaryDark,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(''),
                    trailing: Icon(Icons.tv_sharp),
                    isThreeLine: true,
                  ),
                ),

                /*Card(
              child: ListTile(
                leading: Icon(Icons.person_outline_rounded),
                title: Text('People/Posts'),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('One-line with leading widget'),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text('Two-line ListTile'),
                subtitle: Text('Here is a second line'),
                trailing: Icon(Icons.more_vert),
              ),
            ),*/
              ],
            )));
  }
}