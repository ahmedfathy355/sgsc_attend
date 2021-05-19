import 'package:flutter/material.dart';

import 'Home.dart';
//import 'Pages/DetailsScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MaterialApp(
      title: 'sgsc Employee Check In - Out',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color(0xFFFFFFFF),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
      //routes: Routes,
    );
  }
}

// final Map<String,Widget Function(BuildContext)> Routes =  {
//   DetailsScreen.routeName : (_) => DetailsScreen(),
// };

