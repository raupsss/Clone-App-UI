// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:clone_app/tabs/apps/eventApps.dart';
import 'package:clone_app/tabs/apps/forYouApps.dart';
import 'package:clone_app/tabs/apps/topChartApps.dart';
import 'package:clone_app/tabs/books/genres.dart';
import 'package:flutter/material.dart';

import '../widgets/searchbar.dart';

class Apps extends StatefulWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  State<Apps> createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              floating: true,
              snap: true,
              pinned: false,
              backgroundColor: ThemeData.dark().canvasColor,
              title: Container(
                margin: const EdgeInsets.all(8.0),
                child: SearchBar(),
              ),
            ),
            SliverAppBar(
              elevation: 0,
              pinned: true,
              backgroundColor: ThemeData.dark().canvasColor,
              title: Container(
                child: SizedBox(
                  child: TabBar(
                    indicatorWeight: 3,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.blue[200],
                    labelColor: Colors.blue[200],
                    unselectedLabelColor: Colors.grey,
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
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height,
                child: TabBarView(children: [
                  ForYouApps(),
                  TopChartApps(),
                  EventApps(),
                  Genres(),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
