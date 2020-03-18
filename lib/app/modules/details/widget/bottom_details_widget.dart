import 'package:flutter/material.dart';

class BottomDetailsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: RaisedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                "Adoption",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Color(0XFF171232),
          ),
        ),
        SizedBox(width: 25),
        Expanded(
          flex: 1,
          child: RaisedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Icon(
                Icons.favorite_border,
                size: 30,
                color: Colors.white,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            color: Color(0xFFD44620),
          ),
        ),
      ],
    );
  }
}
