// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:clone_app/constants/bookList.dart';
import 'package:clone_app/widgets/ListBook.dart';
import 'package:flutter/material.dart';

class ForYouBooks extends StatefulWidget {
  const ForYouBooks({Key? key}) : super(key: key);

  @override
  State<ForYouBooks> createState() => _ForYouBooksState();
}

class _ForYouBooksState extends State<ForYouBooks> {
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
                  "Top selling books",
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
            ListBooks(booksItem: BookList.bookList),
            SizedBox(
              height: 20,
            ),
            Text(
              "New Books",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListBooks(booksItem: BookList.bookList),
            SizedBox(
              height: 20,
            ),
            Text(
              "Business Books",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListBooks(booksItem: BookList.bookList),
            SizedBox(
              height: 20,
            ),
            Text(
              "Sci-fi & Fantasy eBooks",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListBooks(booksItem: BookList.bookList),
            SizedBox(
              height: 20,
            ),
            Text(
              "Thrilling & Chilling Reads",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListBooks(booksItem: BookList.bookList),
            SizedBox(
              height: 20,
            ),
            Text(
              "Recently Reduced eBooks",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListBooks(booksItem: BookList.bookList),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
