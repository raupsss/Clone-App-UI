// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ListTopChartGame extends StatefulWidget {
  final List<Map<String, dynamic>> gamesItem;
  const ListTopChartGame({Key? key, required this.gamesItem}) : super(key: key);

  @override
  State<ListTopChartGame> createState() => _ListTopChartGameState();
}

class _ListTopChartGameState extends State<ListTopChartGame> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          // scrollDirection: Axis.horizontal,
          itemCount: widget.gamesItem.length,
          itemBuilder: ((context, index) {
            return GamesItem(
              imageGame: widget.gamesItem[index]["image"],
              nameGame: widget.gamesItem[index]["name"],
              categoryGame: widget.gamesItem[index]["category"],
              storageGame: widget.gamesItem[index]["storage"],
              ratingGame: widget.gamesItem[index]["rating"],
            );
          })),
    );
  }
}

class GamesItem extends StatelessWidget {
  final String nameGame;
  final String imageGame;
  final String categoryGame;
  final String storageGame;
  final String ratingGame;

  const GamesItem({
    Key? key,
    required this.nameGame,
    required this.imageGame,
    required this.categoryGame,
    required this.storageGame,
    required this.ratingGame,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 100,
      // color: Colors.red,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(10),
                child: Image.asset(
                  imageGame,
                  height: 70,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    nameGame,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    categoryGame,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        storageGame,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
