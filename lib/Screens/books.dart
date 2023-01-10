// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:clone_app/tabs/books/forYouBooks.dart';
import 'package:clone_app/tabs/books/genres.dart';
import 'package:clone_app/tabs/books/topSelling.dart';
import 'package:flutter/material.dart';

import '../widgets/searchbar.dart';

class Books extends StatefulWidget {
  const Books({Key? key}) : super(key: key);

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              floating: true,
              snap: true,
              pinned: false,
              backgroundColor: ThemeData.dark().canvasColor,
              title: SearchBar(),
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
                    // isScrollable: true,
                    tabs: [
                      Tab(
                        text: "For You",
                      ),
                      Tab(
                        text: "Top Selling",
                      ),
                      Tab(
                        text: "Genres",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 800,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TabBarView(children: [
                    ForYouBooks(),
                    TopSellingBook(),
                    Genres(),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
