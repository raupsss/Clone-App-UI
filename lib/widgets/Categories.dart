// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class CategoriesClass extends StatefulWidget {
  final List<Map<String, dynamic>> categories;
  const CategoriesClass({Key? key, required this.categories}) : super(key: key);

  @override
  State<CategoriesClass> createState() => _CategoriesClassState();
}

class _CategoriesClassState extends State<CategoriesClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          // scrollDirection: Axis.horizontal,
          itemCount: widget.categories.length,
          itemBuilder: ((context, index) {
            return Category(
              iconCategory: widget.categories[index]["image"],
              nameCategory: widget.categories[index]["name"],
            );
          })),
    );
  }
}

class Category extends StatelessWidget {
  final String nameCategory;
  final String iconCategory;

  const Category({
    Key? key,
    required this.nameCategory,
    required this.iconCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 100,
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              ClipRRect(
                // borderRadius: BorderRadiusDirectional.circular(10),
                child: SvgPicture.asset(
                  iconCategory,
                  height: 25,
                  color: Colors.pink,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                nameCategory,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
