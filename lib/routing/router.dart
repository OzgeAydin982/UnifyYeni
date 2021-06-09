import 'package:flutter/material.dart';
import 'package:unify_app/TwitterLogin.dart';

/*import 'package:flutter_social/routing/routes.dart';
import 'package:flutter_social/views/chat_details.dart';
import 'package:flutter_social/views/home.dart';
import 'package:flutter_social/views/landing.dart';
import 'package:flutter_social/views/login.dart';
import 'package:flutter_social/views/register.dart';
import 'package:flutter_social/views/reset_password.dart';
import 'package:flutter_social/views/user_details.dart';*/

import 'package:unify_app/routing/routes.dart';
import 'package:unify_app/screens/home.dart';
import 'package:unify_app/screens/tabs/profile.dart';
import 'package:unify_app/screens/tabs/recommendation.dart';
import 'package:unify_app/screens/landing.dart';
import 'package:unify_app/screens/login.dart';
import 'package:unify_app/screens/signup.dart';
import 'package:unify_app/screens/words.dart';
import 'package:unify_app/screens/auth.dart';

Route<dynamic> generateRoute(RouteSettings settings) {

  switch (settings.name) {
    case landingViewRoute:
      return MaterialPageRoute(builder: (context) => LandingPage());
    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    case loginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case signupViewRoute:
      return MaterialPageRoute(builder: (context) => SignUpPage());
    case wordsViewRoute:
      return MaterialPageRoute(builder: (context) => WordsPage());
    case authViewRoute:
      return MaterialPageRoute(builder: (context) => AuthPage());
    case twitterViewRoute:
      return MaterialPageRoute(builder: (context) => TwitterLoginScreen());
    /*case resetPasswordViewRoute:
      return MaterialPageRoute(builder: (context) => ResetPasswordScreen());
    case chatDetailsViewRoute:
      return MaterialPageRoute(builder: (context) => ChatDetailsPage(userId: settings.arguments));
    case userDetailsViewRoute:
      return MaterialPageRoute(builder: (context) => UserDetailsPage(userId: settings.arguments));*/
      break;
    default:
      return MaterialPageRoute(builder: (context) => LandingPage());
  }
}