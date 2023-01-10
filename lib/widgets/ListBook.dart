// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';

class ListBooks extends StatefulWidget {
  final List<Map<String, dynamic>> booksItem;
  const ListBooks({Key? key, required this.booksItem}) : super(key: key);

  @override
  State<ListBooks> createState() => _ListBooksState();
}

class _ListBooksState extends State<ListBooks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10.0),
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.booksItem.length,
          itemBuilder: ((context, index) {
            return BooksItem(
              imageBook: widget.booksItem[index]["image"],
              nameBook: widget.booksItem[index]["name"],
              priceBook: widget.booksItem[index]["price"],
            );
          })),
    );
  }
}

class BooksItem extends StatelessWidget {
  final String nameBook;
  final String imageBook;
  final String priceBook;

  const BooksItem({
    Key? key,
    required this.nameBook,
    required this.imageBook,
    required this.priceBook,
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
              borderRadius: BorderRadiusDirectional.circular(10),
              child: Image.asset(
                imageBook,
                height: 150,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              nameBook,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[300],
              ),
            ),
            Text(
              priceBook,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
