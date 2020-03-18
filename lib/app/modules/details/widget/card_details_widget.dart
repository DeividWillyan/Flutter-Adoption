import 'package:flutter/material.dart';

class CardDetailsWidget extends StatelessWidget {
  final Color primaryColor;
  final IconData icon;
  final Color secondColor;
  final double iconSize;
  final String title;

  CardDetailsWidget({
    this.primaryColor,
    this.icon,
    this.secondColor,
    this.iconSize = 30,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.27,
      width: MediaQuery.of(context).size.width * 0.27,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(20),
        color: primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              icon,
              color: secondColor,
              size: iconSize,
            ),
            Text(
              title,
              style: TextStyle(
                color: secondColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
