import 'package:flutter/material.dart';

import '../constants/global_variables.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(124), // here the desired height
          child: AppBar(
            toolbarHeight: 124.0,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(),
            backgroundColor: GlobalVariables.appbarColor,
            elevation: 0,
            title: Text(
              "UPCOMING EVENTS",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(
                      text: "ALL EVENTS",
                    ),
                    Tab(
                      text: "HARDWARE",
                    ),
                    Tab(
                      text: "SOFTWARE",
                    ),
                    Tab(
                      text: "DESIGN",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
