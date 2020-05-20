import 'package:flutter/material.dart';

import '../../app_icons_icons.dart';
import 'pages/stats_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
            ),
          ),
          child: TabBarView(
            children: <Widget>[
              StatsPage(),
              Container(),
              Container(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0),
            ),
            boxShadow: [
              BoxShadow(
                  color: Color(0x0C000000),
                  blurRadius: 10.0,
                  offset: Offset(0.0, -7.0))
            ],
          ),
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.grey,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              insets: EdgeInsets.only(bottom: 48.0),
            ),
            tabs: <Widget>[
              Tab(icon: Icon(AppIcons.virus)),
              Tab(icon: Icon(Icons.add)),
              Tab(icon: Icon(AppIcons.news)),
            ],
          ),
        ),
      ),
    );
  }
}
