import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unify_app/models/user.dart';
import 'package:unify_app/reusable_widgets/GetUserLocation.dart';
import 'package:unify_app/reusable_widgets/GetUserName.dart';
import 'package:unify_app/utils/color.dart';
import 'package:unify_app/routing/routes.dart';
import 'package:line_icons/line_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class ProfilePage extends StatelessWidget {
  final MyUser user  = new MyUser("", "", myusers[0].photo, "", "",0);
  final CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    MyUser pic = myusers[0];
    User u = FirebaseAuth.instance.currentUser;
    final hr = Divider();
    /*final userStats = Positioned(
      bottom: 10.0,
      left: 40.0,
      right: 40.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildUserStats('Followers', '250'),
          _buildUserStats('Following', '276'),
        ],
      ),
    );*/

    final userImage = Container(
      height: 90.0,
      width: 90.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(user.photo),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
      ),
    );

    final userNameLocation = Container(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GetUserName(u.uid),
          GetUserLocation(u.uid),
          Text(
            user.location,
            style: TextStyle(
              color: Colors.grey.withOpacity(0.6),
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );

    final userInfo = Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(8.0),
            shadowColor: Colors.white,
            child: Container(
              height: 220.0,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.2),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                child: Row(
                  children: <Widget>[
                    userImage,
                    SizedBox(width: 20.0),
                    userNameLocation
                  ],
                ),
              ),
            ),
          ),
        ),
        //userStats
      ],
    );

    final logoutBtn = Container(
      margin: EdgeInsets.only(top: 50.0),
      height: 64.0,
      width: MediaQuery
          .of(context)
          .size
          .width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        border: Border.all(color: Colors.white),
        color: Colors.white,
      ),
      child: RaisedButton(
        elevation: 7.0,
        onPressed: () => Navigator.pushNamed(context, landingViewRoute),
        color: primaryLight,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(7.0),
        ),
        child: Text(
          'Log Out',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20.0,
          ),
        ),
      ),
    );


    final secondCard = Padding(
      padding: EdgeInsets.only(right: 20.0, left: 20.0, bottom: 30.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(8.0),
        shadowColor: Colors.white,
        child: Container(
          height: 278.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: <Widget>[
              _buildIconTile(
                  LineIcons.heart, primaryColor.withOpacity(0.6), 'Liked Interests: Hiking, Swimming, TV Shows'),
              hr,
              /*_buildIconTile(LineIcons.user_plus, primaryColor.withOpacity(0.6),
                  'Find Friends'),*/
              /*hr,
              _buildIconTile(
                  LineIcons.cogs, primaryColor.withOpacity(0.6), 'Settings'),*/
              hr,
              logoutBtn,
            ],
          ),
        ),
      ),
    );

    /*final thirdCard = Padding(
      padding: EdgeInsets.only(right: 20.0, left: 20.0, bottom: 30.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(8.0),
        shadowColor: Colors.white,
        child: Container(
          height: 350.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: <Widget>[
              _buildIconTile(LineIcons.user_plus, primaryColor, 'Find Friends'),
              hr,
              _buildIconTile(LineIcons.cogs, Colors.grey.withOpacity(0.6), 'Settings'),
            ],
          ),
        ),
      ),
    );*/

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 350.0,
                      ),
                      Container(
                        height: 250.0,
                        decoration: BoxDecoration(gradient: secondGradient),
                      ),

                      Positioned(top: 100, right: 0, left: 0, child: userInfo)
                    ],
                  ),
                  secondCard,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserStats(String name, String value) {
    return Column(
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
            color: Colors.grey.withOpacity(0.6),
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w900,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }

  Widget _buildIconTile(IconData icon, Color color, String title) {
    return ListTile(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
      leading: Container(
        height: 100.0,
        width: 30.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
      trailing: Icon(LineIcons.chevron_circle_right),
    );
  }
}