// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, file_names

import 'package:clone_app/constants/gameList.dart';
import 'package:clone_app/widgets/Event.dart';
import 'package:flutter/material.dart';

class EventGames extends StatefulWidget {
  const EventGames({Key? key}) : super(key: key);

  @override
  State<EventGames> createState() => _EventGamesState();
}

class _EventGamesState extends State<EventGames> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EventClass(eventGames: GamesList.gamesList),
          ],
        ),
      ),
    );
  }
}
