import 'package:flutter/material.dart';
import 'package:news_app/pages/TabViews/Discover.dart';
import 'package:news_app/pages/TabViews/Home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;
  Future<bool> _onWillPop() async {
    return false;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _tabController.animateTo(_selectedIndex);
    });
  }

  List<Widget> _tabBarView = [Home(), Discover()];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: _tabBarView.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
          child: TabBarView(
            children: _tabBarView,
            controller: _tabController,
            physics: NeverScrollableScrollPhysics(),
          ),
          onWillPop: _onWillPop),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
