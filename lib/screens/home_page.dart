import 'package:flutter/material.dart';

import '../component/my_appbar.dart';
import '../component/my_bottombar.dart';
import '../component/my_tabbar.dart';
import '../tabs/recent_tab.dart';
import '../tabs/top_tab.dart';
import '../tabs/trending_tab.dart';
import '../util/glass_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _searchButtonTapped() {}

  List tabOptions = const [
    ['Recent', RecentTab()],
    ['Trending', TrendingTab()],
    ['Top', TopTab()],
  ];
  int _currentBottomIndex = 0;
  void _handleBottomIndexChange(int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        extendBody: true,
        bottomNavigationBar:GlassBox(
          child: MyBottomBar(
            index: _currentBottomIndex,
            onTap: _handleBottomIndexChange,
          ),
        ) ,
        body: ListView(
          children: [
            // Text("data")
            MyAppBar(
              title: "Explore Collections",
             onSearchTap: () {  },
            ),
            SizedBox(
              height: 600,
              child: MyTabBar(tabOptions: tabOptions),
            )
          ],
        ),
      ),
    );
  }
}
