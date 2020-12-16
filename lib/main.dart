import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/homepage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'IBM Plex Sans',
        // primarySwatch: MaterialColor(primary, swatch) Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

