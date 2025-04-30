import 'package:flutter/material.dart';
import 'package:twitter/tweetPage/twitterPage.dart';

import 'loginPage/loginPage.dart';
import 'shareComponents/Footer.dart';
import 'shareComponents/Header.dart';
import 'loginPage/connectForm.dart';
import 'tweetPage/contentBody.dart';

void main() {
  runApp(App());
}

class Routes {
  static Map<String, WidgetBuilder> getRoutes(BuildContext context){
    return {
      "/login" : (context) => LoginPage(),
      "/twitter" : (context) => TwitterPage()
    };
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: "/login",
      routes: Routes.getRoutes(context),
    );
  }
}





