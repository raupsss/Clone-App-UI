// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:clone_app/constants/appList.dart';
import 'package:clone_app/constants/bookList.dart';
import 'package:clone_app/constants/gameList.dart';
import 'package:clone_app/widgets/ListApps.dart';
import 'package:clone_app/widgets/ListBook.dart';
import 'package:clone_app/widgets/ListGames.dart';
import 'package:flutter/material.dart';

import '../../constants/offersGames.dart';
import '../../constants/offersList.dart';
import '../offers/game_offers.dart';
import '../offers/list_offer_slide.dart';

class ForYouApps extends StatefulWidget {
  const ForYouApps({Key? key}) : super(key: key);

  @override
  State<ForYouApps> createState() => _ForYouAppsState();
}

class _ForYouAppsState extends State<ForYouApps> {
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
            ListApps(appsItem: AppsList.appsList),
            SizedBox(
              height: 20,
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
            ListApps(appsItem: AppsList.appsList),
            SizedBox(
              height: 10,
            ),
            Text(
              "Editors' Choice Apps",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListApps(appsItem: AppsList.appsList),
            SizedBox(
              height: 20,
            ),
            Text(
              "Social Networking",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListApps(appsItem: AppsList.appsList),
            SizedBox(
              height: 20,
            ),
            Text(
              "Entertainment",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListApps(appsItem: AppsList.appsList),
            SizedBox(
              height: 20,
            ),
            Text(
              "Based on your recent activity",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListApps(appsItem: AppsList.appsList),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
