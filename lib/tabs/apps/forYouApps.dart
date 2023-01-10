// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, avoid_unnecessary_containers, file_names

import 'package:clone_app/constants/appList.dart';
import 'package:clone_app/widgets/ListApps.dart';
import 'package:flutter/material.dart';

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
            const SizedBox(
              height: 10,
            ),
            const ListApps(appsItem: AppsList.appsList),
            const SizedBox(
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
            const SizedBox(
              height: 10,
            ),
            const ListApps(appsItem: AppsList.appsList),
            const SizedBox(
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
            const SizedBox(
              height: 10,
            ),
            const ListApps(appsItem: AppsList.appsList),
            const SizedBox(
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
            const SizedBox(
              height: 10,
            ),
            const ListApps(appsItem: AppsList.appsList),
            const SizedBox(
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
            const SizedBox(
              height: 10,
            ),
            const ListApps(appsItem: AppsList.appsList),
            const SizedBox(
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
            const SizedBox(
              height: 10,
            ),
            const ListApps(appsItem: AppsList.appsList),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
