// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:clone_app/constants/bookList.dart';
import 'package:clone_app/constants/gameList.dart';
import 'package:clone_app/widgets/ListTopChartGame.dart';
import 'package:clone_app/widgets/ListTopSelling.dart';
import 'package:flutter/material.dart';

class TopChartGames extends StatefulWidget {
  const TopChartGames({Key? key}) : super(key: key);

  @override
  State<TopChartGames> createState() => _TopChartGamesState();
}

class _TopChartGamesState extends State<TopChartGames> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  // color: Colors.red,
                  child: Text("Price drops"),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  // color: Colors.red,
                  child: Text("Family Share"),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  // color: Colors.red,
                  child: Text("Reading Tools"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                ListTopChartGame(gamesItem: GamesList.gamesList),
              ],
            )
          ],
        ),
      ),
    );
  }
}
