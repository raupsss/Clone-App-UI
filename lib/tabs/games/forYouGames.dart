// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:clone_app/constants/bookList.dart';
import 'package:clone_app/constants/gameList.dart';
import 'package:clone_app/widgets/ListBook.dart';
import 'package:clone_app/widgets/ListGames.dart';
import 'package:flutter/material.dart';

import '../../constants/offersGames.dart';
import '../../constants/offersList.dart';
import '../offers/game_offers.dart';
import '../offers/list_offer_slide.dart';

class ForYouGames extends StatefulWidget {
  const ForYouGames({Key? key}) : super(key: key);

  @override
  State<ForYouGames> createState() => _ForYouGamesState();
}

class _ForYouGamesState extends State<ForYouGames> {
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
                  "Recommended for you",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.grey[400],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GameOffers(offersGames: OfferGame.offersGame),
            SizedBox(
              height: 10,
            ),
            Text(
              "Suggested for you",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListGames(gamesItem: GamesList.gamesList),
            Text(
              "Realistic Games",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GameOffers(offersGames: OfferGame.offersGame),
            SizedBox(
              height: 20,
            ),
            Text(
              "Multiplayer Games",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListOffers(offersData: OffersList.offers),
            SizedBox(
              height: 20,
            ),
            Text(
              "Casual Games",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListOffers(offersData: OffersList.offers),
            SizedBox(
              height: 20,
            ),
            Text(
              "Suggested For You",
              style: TextStyle(
                color: Colors.grey[400],
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
