import 'package:flutter/material.dart';
import 'package:twitter/tweetPage/twitterPage.dart';

import 'loginPage/loginPage.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
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





