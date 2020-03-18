import 'package:adote/app/modules/details/widget/bottom_details_widget.dart';
import 'package:adote/app/modules/details/widget/card_details_widget.dart';
import 'package:adote/app/modules/details/widget/footer_details_widget.dart';
import 'package:adote/app/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BodyDetailsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.62,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 68, left: 25, right: 25),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FooterDetailsWidget(),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CardDetailsWidget(
                            primaryColor: color4,
                            icon: Icons.pets,
                            secondColor: Color(0xFFD44620),
                            title: "Friendly",
                          ),
                          SizedBox(width: 8),
                          CardDetailsWidget(
                            primaryColor: color5,
                            icon: Icons.scatter_plot,
                            secondColor: Color(0xFF7763DC),
                            title: "Neat",
                          ),
                          SizedBox(width: 8),
                          CardDetailsWidget(
                            primaryColor: color6,
                            icon: FontAwesomeIcons.music,
                            secondColor: Color(0xFF12CEBB),
                            iconSize: 25,
                            title: "Vocal",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Summary",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.",
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  BottomDetailsWidget(),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
