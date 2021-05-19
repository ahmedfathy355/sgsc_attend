import 'package:flutter/material.dart';

import 'NavBarItem.dart';

class NavBar extends StatelessWidget {
  final int activeIndex;
  final List _tabIcons;
  final ValueChanged<int> onTabChanged;

  const NavBar({
    Key key,@required List TabIcons,this.activeIndex ,this.onTabChanged,
  }) : _tabIcons = TabIcons , super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical:10,),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0,0),
            color: Color(0xFFA8A8A8).withOpacity(0.14),
            blurRadius: 15
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15)
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(4, (index) {
          return NavBarItem(
            icon: _tabIcons[index],
            index: index,
            activeIndex: activeIndex,
            onTabChanged: onTabChanged,
          );
        }
        ),
      ),
    );
  }
}
