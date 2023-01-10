// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, file_names

import 'package:clone_app/constants/bookList.dart';
import 'package:clone_app/widgets/ListTopSelling.dart';
import 'package:flutter/material.dart';

class TopSellingBook extends StatefulWidget {
  const TopSellingBook({Key? key}) : super(key: key);

  @override
  State<TopSellingBook> createState() => _TopSellingBookState();
}

class _TopSellingBookState extends State<TopSellingBook> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  // color: Colors.red,
                  child: const Text("Price drops"),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  // color: Colors.red,
                  child: const Text("Family Share"),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  // color: Colors.red,
                  child: const Text("Reading Tools"),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                const ListTopSelling(booksItem: BookList.bookList),
              ],
            )
          ],
        ),
      ),
    );
  }
}
