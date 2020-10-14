import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import './route/index.dart';
// import '../styles/theme.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
    return MaterialApp(
      title: 'title',
      initialRoute: RouteConfig.initRouteName,
      // theme: ThemeConfig.themeData(),
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: RouteConfig.onGenerateRoute,
    );
  }
}
