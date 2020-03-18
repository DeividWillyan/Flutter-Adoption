import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Icon(Icons.search, size: 30),
          ),
          Text(
            "Search",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF3B8B96),
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
