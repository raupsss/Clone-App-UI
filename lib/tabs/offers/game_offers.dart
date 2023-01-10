// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class GameOffers extends StatefulWidget {
  final List<Map<String, dynamic>> offersGames;
  const GameOffers({Key? key, required this.offersGames}) : super(key: key);

  @override
  State<GameOffers> createState() => _GameOffersState();
}

class _GameOffersState extends State<GameOffers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      height: 200,
      child: ListView.builder(
        itemCount: widget.offersGames.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return OfferItem(
            bannerName: widget.offersGames[index]["banner"],
            logoName: widget.offersGames[index]["logo"],
            nameList: widget.offersGames[index]["name"],
            categoryName: widget.offersGames[index]["category"],
            avgRating: widget.offersGames[index]["rating"],
          );
        }),
      ),
    );
  }
}

class OfferItem extends StatelessWidget {
  final String bannerName;
  final String logoName;
  final String nameList;
  final String categoryName;
  final double avgRating;
  const OfferItem({
    Key? key,
    required this.avgRating,
    required this.bannerName,
    required this.logoName,
    required this.nameList,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 200,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        bannerName,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            logoName,
                            height: 50,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nameList,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              categoryName,
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.grey),
                            ),
                            Row(
                              children: [
                                Text(
                                  avgRating.toString(),
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                const Icon(
                                  LineAwesomeIcons.star_1,
                                  color: Colors.grey,
                                  size: 12,
                                )
                              ],
                            ),
                          ],
                          // column = cross > kanan kiri, main > atas bawah
                          // row = cross > atas bawah, main > kanan kiri
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
