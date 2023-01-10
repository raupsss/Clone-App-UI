// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SizedBox(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/myFace.jpg"),
                      radius: 10,
                    ),
                  ),
                ),
                hintText: "Search for Apps & Games",
              ),
            ),
          ),
          Positioned(
            child: Icon(Icons.mic_none),
            bottom: 12,
            right: 60,
          )
        ],
      ),
    );
  }
}
