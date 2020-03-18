import 'package:flutter/material.dart';

class FooterDetailsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Egyptian Mau",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            Row(
              children: [
                Text("Verified", style: TextStyle(fontSize: 20)),
                SizedBox(width: 5),
                Icon(Icons.verified_user)
              ],
            )
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text("Male", style: TextStyle(fontSize: 20)),
                SizedBox(width: 10),
                Icon(Icons.brightness_1, size: 10),
                SizedBox(width: 10),
                Text("9 Mounths", style: TextStyle(fontSize: 20)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 5),
                Text("2.6 km", style: TextStyle(fontSize: 20)),
              ],
            )
          ],
        )
      ],
    );
  }
}
