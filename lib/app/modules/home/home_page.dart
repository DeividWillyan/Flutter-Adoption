import 'package:adote/app/modules/home/widget/card_item.dart';
import 'package:adote/app/modules/home/widget/card_prinicpal.dart';
import 'package:adote/app/modules/home/widget/footer_widget.dart';
import 'package:adote/app/modules/home/widget/search_widget.dart';
import 'package:adote/app/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int currentPage;
  TabController tabBarController;

  @override
  void initState() {
    super.initState();
    currentPage = 0;
    tabBarController =
        new TabController(initialIndex: currentPage, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            FooterWidget(),
            CardPrincipal(),
            SizedBox(height: 15),
            Text("Search For a Pet",  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            SearchWidget(),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Recommend", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
              Text("See All", style: TextStyle(fontSize: 17, color: Colors.grey, fontWeight: FontWeight.bold))
            ]),
            Container(
              height: MediaQuery.of(context).size.height * 0.28,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardItem(title: "Egyptian Mau", mounth: "9 mounths", genre: "Male", color: color1, img: "assets/images/cat.png" ),
                  CardItem(title: "Pixie-bob", mounth: "6 mounths", genre: "Female", color: color2, img: "assets/images/cat3.png" ),
                  CardItem(title: "Egyptian Mau", mounth: "9 mounths", genre: "Male", color: color1, img: "assets/images/cat.png" )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: _bottomNavigatonBar(),
    );
  }

  Widget _bottomNavigatonBar() {
    return CubertoBottomBar(
      inactiveIconColor: Colors.black,
      tabStyle: CubertoTabStyle.STYLE_NORMAL,
      selectedTab: currentPage,
      tabs: [
        TabData(iconData: FontAwesomeIcons.cat, title: "Cats", tabColor: Colors.black),
        TabData(iconData: FontAwesomeIcons.dog, title: "Dogs", tabColor: Colors.black),
        TabData(iconData: FontAwesomeIcons.dove, title: "Birds", tabColor: Colors.black),
        TabData(iconData: FontAwesomeIcons.paw, title: "Outhers", tabColor: Colors.black),
      ],
      onTabChangedListener: (position, title, color) {
        setState(() {
          tabBarController.animateTo(position, curve: Curves.easeInOut);
          currentPage = position;
        });
      },
    );
  }

  @override
  void dispose() {
    tabBarController.dispose();
    super.dispose();
  }
}
