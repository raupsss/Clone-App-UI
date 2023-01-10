// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ListGames extends StatefulWidget {
  final List<Map<String, dynamic>> gamesItem;
  const ListGames({Key? key, required this.gamesItem}) : super(key: key);

  @override
  State<ListGames> createState() => _ListGamesState();
}

class _ListGamesState extends State<ListGames> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10.0),
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.gamesItem.length,
          itemBuilder: ((context, index) {
            return GamesItem(
              imageGame: widget.gamesItem[index]["image"],
              nameGame: widget.gamesItem[index]["name"],
              ratingGame: widget.gamesItem[index]["rating"],
            );
          })),
    );
  }
}

class GamesItem extends StatelessWidget {
  final String nameGame;
  final String imageGame;
  final String ratingGame;

  const GamesItem({
    Key? key,
    required this.nameGame,
    required this.imageGame,
    required this.ratingGame,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 200),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(20),
              child: Image.asset(
                imageGame,
                height: 100,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              nameGame,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[300],
              ),
            ),
            Row(
              children: [
                Text(
                  ratingGame,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  LineAwesomeIcons.star_1,
                  color: Colors.grey,
                  size: 12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
