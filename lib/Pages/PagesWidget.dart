import 'package:Attend/Pages/DetailsScreen.dart';
import 'package:Attend/Widgets/NavBar.dart';
import 'package:flutter/material.dart';

class PagesWidget extends StatefulWidget {
  @override
  _PagesWidgetState createState() => _PagesWidgetState();
}

class _PagesWidgetState extends State<PagesWidget> {

  int currentIndex = 0;
  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  // final List _tabIcons = List.unmodifiable([
  //   {'icon': 'assets/svg/home.svg', 'title': 'الرئيسية'},
  //   {'icon': 'assets/svg/linechart.svg', 'title': 'السجل'},
  //   {'icon': 'assets/svg/information.svg', 'title': 'التنبيهات'},
  //   {'icon': 'assets/svg/user.svg', 'title': 'الحساب'},
  // ]);

  final List _tabIcons = List.unmodifiable([
    {'icon': 'Icons.home', 'title': 'الرئيسية'},
    {'icon': 'assets/svg/linechart.svg', 'title': 'السجل'},
    {'icon': 'assets/svg/information.svg', 'title': 'التنبيهات'},
    {'icon': 'assets/svg/user.svg', 'title': 'الحساب'},
  ]);

  initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(PagesWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  final List<Widget> _tabs = List.unmodifiable([
    DetailsScreen(),
    Container(),
    Container(),
    Container(),
  ]);
  void onTabChanged(int index) {
    setState(() => currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(

        key: _scaffoldKey,
        body: _tabs[currentIndex],
        bottomNavigationBar: NavBar(
          TabIcons: _tabIcons,
          activeIndex: currentIndex,
          onTabChanged: onTabChanged,
        ),
      ),
    );
  }
}
