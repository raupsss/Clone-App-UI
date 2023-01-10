// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:clone_app/constants/bookList.dart';
import 'package:clone_app/constants/categories.dart';
import 'package:clone_app/widgets/Categories.dart';
import 'package:clone_app/widgets/ListTopSelling.dart';
import 'package:flutter/material.dart';

class Genres extends StatefulWidget {
  const Genres({Key? key}) : super(key: key);

  @override
  State<Genres> createState() => _GenresState();
}

class _GenresState extends State<Genres> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoriesClass(categories: Categories.categories),
          ],
        ),
      ),
    );
  }
}
