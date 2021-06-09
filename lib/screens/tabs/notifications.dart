import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';
import 'package:unify_app/utils/color.dart';

// Notification Screen appears as only a UI element for now
class NotificationsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView(
              children: <Widget>[
                Card(child: ListTile(title:
                Text('Notifications',
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                  ),)
                )),
                Card(
                  child: ListTile(
                    //leading: Icon(Icons.person_outline_rounded),
                    title: Text(
                      'We Found a New Person That You Connect With!',
                      style: TextStyle(
                        color: primaryDark,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(''),
                    trailing: Icon(LineIcons.chevron_circle_right),
                    isThreeLine: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    //leading: Icon(Icons.music_video_sharp),
                    title: Text(
                      'Jeff Richards Started Following You, Go To Their Profile Page!',
                      style: TextStyle(
                        color: primaryDark,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(''),
                    trailing: Icon(LineIcons.chevron_circle_right),
                    isThreeLine: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    //leading: Icon(Icons.event),
                    title: Text(
                      'We Found a New Person That You Connect With!',
                      style: TextStyle(
                        color: primaryDark,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(''),
                    trailing: Icon(LineIcons.chevron_circle_right),
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