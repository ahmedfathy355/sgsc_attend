import 'package:Attend/Pages/PagesWidget.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: PagesWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('sgsc' ,style: TextStyle(fontSize: 26 ,color: Color(0xFF071C66)),),
        leading: Icon(Icons.menu , color: Color(0xFF071C66),),
        elevation: 1,
      ),
    );
  }
}

