// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ListTopSelling extends StatefulWidget {
  final List<Map<String, dynamic>> booksItem;
  const ListTopSelling({Key? key, required this.booksItem}) : super(key: key);

  @override
  State<ListTopSelling> createState() => _ListTopSellingState();
}

class _ListTopSellingState extends State<ListTopSelling> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          // scrollDirection: Axis.horizontal,
          itemCount: widget.booksItem.length,
          itemBuilder: ((context, index) {
            return BooksItem(
              imageBook: widget.booksItem[index]["image"],
              nameBook: widget.booksItem[index]["name"],
              priceBook: widget.booksItem[index]["price"],
              authorBook: widget.booksItem[index]["author"],
              ratingBook: widget.booksItem[index]["rating"],
            );
          })),
    );
  }
}

class BooksItem extends StatelessWidget {
  final String nameBook;
  final String imageBook;
  final String priceBook;
  final String authorBook;
  final String ratingBook;

  const BooksItem({
    Key? key,
    required this.nameBook,
    required this.imageBook,
    required this.priceBook,
    required this.authorBook,
    required this.ratingBook,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 130,
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
                  imageBook,
                  height: 100,
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
                    nameBook,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    authorBook,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        ratingBook,
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
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    priceBook,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
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
