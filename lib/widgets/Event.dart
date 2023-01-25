// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, file_names
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class EventClass extends StatefulWidget {
  final List<Map<String, dynamic>> eventGames;
  const EventClass({Key? key, required this.eventGames}) : super(key: key);

  @override
  State<EventClass> createState() => _EventClassState();
}

class _EventClassState extends State<EventClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: widget.eventGames.length,
        itemBuilder: ((context, index) {
          return EventGames(
            imageGame: widget.eventGames[index]["image"],
            nameGame: widget.eventGames[index]["name"],
            categoryGame: widget.eventGames[index]["category"],
            storageGame: widget.eventGames[index]["storage"],
            ratingGame: widget.eventGames[index]["rating"],
            bannerGame: widget.eventGames[index]["banner"],
          );
        }),
      ),
    );
  }
}

class EventGames extends StatelessWidget {
  final String nameGame;
  final String imageGame;
  final String categoryGame;
  final String storageGame;
  final String ratingGame;
  final String bannerGame;

  const EventGames({
    Key? key,
    required this.nameGame,
    required this.imageGame,
    required this.categoryGame,
    required this.storageGame,
    required this.ratingGame,
    required this.bannerGame,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      // height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            margin: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            imageGame,
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
                              nameGame,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              categoryGame,
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.grey),
                            ),
                            Row(
                              children: [
                                Text(
                                  ratingGame,
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
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TextButton(
                      onPressed: (() {}),
                      child: Text(
                        "Install",
                        style: TextStyle(color: Colors.blue[200]),
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  // borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    bannerGame,
                    // height: 500,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Major update | Update available 14 days ago",
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Major update | Update available 14 days ago",
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
