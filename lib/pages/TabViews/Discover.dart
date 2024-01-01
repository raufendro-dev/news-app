import "package:flutter/material.dart";
import "package:news_app/pages/TabCategory/Health.dart";
import "package:news_app/pages/TabCategory/Politics.dart";
import "../TabCategory/Sport.dart";
import "../TabCategory/Business.dart";

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> with TickerProviderStateMixin {
  late TabController _tabController;
  List<Widget> _tabBarView = [Health(), Sport(), Business(), Politics()];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: _tabBarView.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 12, top: 10, bottom: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discover",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.search))
              ],
            ),
          ),
          TabBar(
            controller: _tabController,
            // give the indicator a decoration (color and border radius)

            unselectedLabelColor: Colors.black,
            tabs: [
              // first tab [you can add an icon using the icon property]
              Tab(
                text: 'Health',
              ),

              // second tab [you can add an icon using the icon property]
              Tab(
                text: 'Sport',
              ),
              Tab(
                text: 'Business',
              ),
              Tab(
                text: 'Politics',
              ),
            ],
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: _tabBarView,
          ))
        ],
      )),
    );
  }
}
