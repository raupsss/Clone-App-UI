// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ListOffers extends StatefulWidget {
  final List<Map<String, dynamic>> offersData;
  const ListOffers({Key? key, required this.offersData}) : super(key: key);

  @override
  State<ListOffers> createState() => _ListOffersState();
}

class _ListOffersState extends State<ListOffers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      height: 300,
      child: ListView.builder(
        itemCount: widget.offersData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return OfferItem(
            bannerName: widget.offersData[index]["banner"],
            logoName: widget.offersData[index]["logo"],
            nameList: widget.offersData[index]["name"],
            categoryName: widget.offersData[index]["category"],
            avgRating: widget.offersData[index]["rating"],
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
        maxWidth: 300,
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
                        // height: 200,
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height,
                        // width: 300,
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
