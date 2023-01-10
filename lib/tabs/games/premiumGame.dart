// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, avoid_unnecessary_containers, file_names

import 'package:clone_app/constants/gameList.dart';
import 'package:clone_app/widgets/ListGames.dart';
import 'package:flutter/material.dart';

import '../../constants/offersGames.dart';
import '../offers/game_offers.dart';

class PremiumGame extends StatefulWidget {
  const PremiumGame({Key? key}) : super(key: key);

  @override
  State<PremiumGame> createState() => _PremiumGameState();
}

class _PremiumGameState extends State<PremiumGame> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Games We're Playing",
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.grey[300],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // GameOffers(offersGames: OfferGame.offersGame),
            ListGames(gamesItem: GamesList.gamesList),
            Text(
              "Get Started",
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Explore some popular premium titles",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GameOffers(offersGames: OfferGame.offersGame),
            Text(
              "Games on Sale",
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Play these latest deals",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListGames(gamesItem: GamesList.gamesList),
            SizedBox(
              height: 10,
            ),
            Text(
              "No Wifi No Problem",
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Play wherever whenever",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListGames(gamesItem: GamesList.gamesList),
            SizedBox(
              height: 10,
            ),
            Text(
              "Editor's Choice",
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Play the best of the Play Store",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListGames(gamesItem: GamesList.gamesList),
            SizedBox(
              height: 10,
            ),
            Text(
              "try Before You Buy",
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListGames(gamesItem: GamesList.gamesList),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
