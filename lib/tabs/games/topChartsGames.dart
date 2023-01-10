// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers

import 'package:clone_app/constants/gameList.dart';
import 'package:clone_app/widgets/ListTopChartGame.dart';
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
                      const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  // color: Colors.red,
                  child: const Text("Price drops"),
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
                      const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  // color: Colors.red,
                  child: const Text("Family Share"),
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
                      const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  // color: Colors.red,
                  child: const Text("Reading Tools"),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                const ListTopChartGame(gamesItem: GamesList.gamesList),
              ],
            )
          ],
        ),
      ),
    );
  }
}
