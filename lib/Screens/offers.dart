// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:clone_app/constants/offersGames.dart';
import 'package:clone_app/constants/offersList.dart';
import 'package:clone_app/tabs/offers/game_offers.dart';
import 'package:clone_app/tabs/offers/list_offer_slide.dart';
import 'package:flutter/material.dart';

import '../constants/bookList.dart';
import '../widgets/ListBook.dart';
import '../widgets/searchbar.dart';

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: SearchBar(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Top Offers For You",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListOffers(offersData: OffersList.offers),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Recommend Games For You",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GameOffers(offersGames: OfferGame.offersGame),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Price drops on books",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListBooks(booksItem: BookList.bookList),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Recommend Apps For You",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListOffers(offersData: OffersList.offers),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
