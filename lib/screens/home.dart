import 'package:flutter/material.dart';
//import 'package:flutter_social_ui/widgets/following_users.dart';
//import 'package:flutter_social_ui/widgets/posts_carousel.dart';

import 'package:line_icons/line_icons.dart';
import 'package:unify_app/screens/tabs/recommendation.dart';
import 'package:unify_app/utils/color.dart';
import 'package:unify_app/screens/tabs/feeds.dart';
import 'package:unify_app/screens/tabs/profile.dart';
import 'package:unify_app/screens/tabs/chat.dart';

import 'RecomInt.dart';

// Home Screen that has the Feeds Page as the main page layout
// FeedsPage, NotificationsPage(), RecommendationPage(), ProfilePage() are a part of the Bottom Navigation Bar
// User can navigate to above pages with associated buttons

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    FeedsPage(),
    ChatPage(),
    RecommendationPage(),
    ProfilePage()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bottomNavBar = BottomNavigationBar(

      onTap: onTabTapped,
      currentIndex: _currentIndex,
      backgroundColor: secondaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.white.withOpacity(0.8),
      elevation: 0.0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.rss_feed),
          title: Text(
            'Feed',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        BottomNavigationBarItem(
          icon: Icon(LineIcons.bell),
          title: Text(
            'Chat',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text(
            'Recommendations',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        BottomNavigationBarItem(
          icon: Icon(LineIcons.user),
          title: Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );

    return Scaffold(
      bottomNavigationBar: bottomNavBar,
      body: _pages[_currentIndex],
    );
  }
}