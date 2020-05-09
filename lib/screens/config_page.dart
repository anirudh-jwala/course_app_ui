import 'package:courseappui/screens/home_page.dart';
import 'package:courseappui/screens/newsfeed_page.dart';
import 'package:courseappui/screens/store_page.dart';
import 'package:flutter/material.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  int _tabNavigationIndex = 1;

  @override
  void initState() {
    super.initState();
    setState(() {
      _tabNavigationIndex = 1;
    });
  }

  List<Widget> _tabPage = [
    StorePage(),
    HomePage(),
    NewsfeedPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            NavigationRail(
              selectedIndex: _tabNavigationIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _tabNavigationIndex = index;
                });
              },
              labelType: NavigationRailLabelType.selected,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff3f729b),
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://avatars3.githubusercontent.com/u/25549847?s=460&u=bf4da9a9ba3880e49ab876d2772974eb2a5f8343&v=4",
                      ),
                      radius: 25.0,
                    ),
                  ],
                ),
              ),
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.store),
                  selectedIcon: Icon(Icons.store),
                  label: Text("Store"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  selectedIcon: Icon(Icons.home),
                  label: Text("Home"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.rss_feed),
                  selectedIcon: Icon(Icons.rss_feed),
                  label: Text("Newsfeed"),
                ),
              ],
            ),
            VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: Center(
                child: _tabPage[_tabNavigationIndex],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
