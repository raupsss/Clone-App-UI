// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ListApps extends StatefulWidget {
  final List<Map<String, dynamic>> appsItem;
  const ListApps({Key? key, required this.appsItem}) : super(key: key);

  @override
  State<ListApps> createState() => _ListAppsState();
}

class _ListAppsState extends State<ListApps> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10.0),
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.appsItem.length,
          itemBuilder: ((context, index) {
            return AppsItem(
              imageApp: widget.appsItem[index]["image"],
              nameApp: widget.appsItem[index]["name"],
              ratingApp: widget.appsItem[index]["rating"],
            );
          })),
    );
  }
}

class AppsItem extends StatelessWidget {
  final String nameApp;
  final String imageApp;
  final String ratingApp;

  const AppsItem({
    Key? key,
    required this.nameApp,
    required this.imageApp,
    required this.ratingApp,
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
                imageApp,
                height: 120,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              nameApp,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[300],
              ),
            ),
            Row(
              children: [
                Text(
                  ratingApp,
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
