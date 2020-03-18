import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CardItem extends StatelessWidget {
  final String title;
  final String mounth;
  final String genre;
  final Color color;
  final String img;

  CardItem({this.title, this.mounth, this.genre, this.color, this.img});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Modular.to.pushNamed('/details/$title');
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Stack(
          overflow: Overflow.visible,
          fit: StackFit.loose,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20),
              width: MediaQuery.of(context).size.width * 0.65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                        SizedBox(height: 10),
                        Text(mounth,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700)),
                        SizedBox(height: 10),
                        Text(genre,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -40,
              right: -(MediaQuery.of(context).padding.left * 0.8),
              child: Image.asset(
                img,
                scale: 0.95,
                height: 220,
              ),
            )
          ],
        ),
      ),
    );
  }
}
