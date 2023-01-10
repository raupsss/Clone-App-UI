// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:clone_app/tabs/games/forYouGames.dart';
import 'package:clone_app/tabs/games/topChartsGames.dart';
import 'package:flutter/material.dart';

import '../widgets/searchbar.dart';

class Games extends StatefulWidget {
  const Games({Key? key}) : super(key: key);

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              floating: true,
              snap: true,
              pinned: false,
              backgroundColor: ThemeData.dark().canvasColor,
              title: Container(
                margin: const EdgeInsets.all(16.0),
                child: SearchBar(),
              ),
            ),
            SliverAppBar(
              elevation: 0,
              pinned: true,
              backgroundColor: ThemeData.dark().canvasColor,
              title: Container(
                // width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  child: TabBar(
                    indicatorWeight: 3,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.blue[200],
                    labelColor: Colors.blue[200],
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: "For You",
                      ),
                      Tab(
                        text: "Top Charts",
                      ),
                      Tab(
                        text: "Events",
                      ),
                      Tab(
                        text: "Categories",
                      ),
                      Tab(
                        text: "Premium",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height,
                // padding: EdgeInsets.all(50),
                child: TabBarView(children: [
                  ForYouGames(),
                  TopChartGames(),
                  Text("Hello 3"),
                  Text("Hello 4"),
                  Text("Hello 5"),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
