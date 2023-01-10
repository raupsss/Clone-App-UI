// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ListTopChartApps extends StatefulWidget {
  final List<Map<String, dynamic>> appsItem;
  const ListTopChartApps({Key? key, required this.appsItem}) : super(key: key);

  @override
  State<ListTopChartApps> createState() => _ListTopChartAppsState();
}

class _ListTopChartAppsState extends State<ListTopChartApps> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          // scrollDirection: Axis.horizontal,
          itemCount: widget.appsItem.length,
          itemBuilder: ((context, index) {
            return AppsItem(
              imageApp: widget.appsItem[index]["image"],
              nameApp: widget.appsItem[index]["name"],
              categoryApp: widget.appsItem[index]["category"],
              storageApp: widget.appsItem[index]["storage"],
              ratingApp: widget.appsItem[index]["rating"],
            );
          })),
    );
  }
}

class AppsItem extends StatelessWidget {
  final String nameApp;
  final String imageApp;
  final String categoryApp;
  final String storageApp;
  final String ratingApp;

  const AppsItem({
    Key? key,
    required this.nameApp,
    required this.imageApp,
    required this.categoryApp,
    required this.storageApp,
    required this.ratingApp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 90,
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
                  imageApp,
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
                    nameApp,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    categoryApp,
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
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        storageApp,
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
