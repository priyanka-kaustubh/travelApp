import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../screens/bestDeal_screen.dart';
import '../screens/home_screen.dart';
import '../screens/favorite_screen.dart';
import '../screens/explore_screen.dart';
import '../screens/setting_screen.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedTab = 0;

  List<Widget> _pageSelectors = [
    HomeScreen(),
    ExploreScreen(),
    FavoriteScreen(),
    SettingScreen()

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildOffstageNavigator(0),
          _buildOffstageNavigator(1),
          _buildOffstageNavigator(2),
          _buildOffstageNavigator(3),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,

        onTap: (int index){
          setState(() {
            _selectedTab = index;
          });
        },

        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey[500],

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: "explore"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "favorite"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "favorite"
          ),
        ],

      ),
    );

  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index){
    return{
      "/": (context){
        return[
          HomeScreen(),
          ExploreScreen(),
          FavoriteScreen(),
          SettingScreen()
        ].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index){
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedTab != index,
      child: Navigator(
        onGenerateRoute: (routeSettings){
          return MaterialPageRoute(
              builder: (context) => routeBuilders[routeSettings.name](context)
          );
        },
      ),
    );
  }

}
