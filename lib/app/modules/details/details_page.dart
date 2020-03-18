import 'package:adote/app/modules/details/widget/body_datails_widget.dart';
import 'package:adote/app/modules/home/widget/footer_widget.dart';
import 'package:adote/app/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailsPage extends StatelessWidget {
  final String title;

  const DetailsPage({this.title});

  @override
  Widget build(BuildContext context) {
    final _appBar = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: color3,
      body: Padding(
        padding: EdgeInsets.only(top: _appBar),
        child: Stack(
          children: [
            BodyDetailsWidget(),
            Image.asset(
              "assets/images/cat4.png",
              height: MediaQuery.of(context).size.height * 0.45,
            ),
            Padding(
              padding: EdgeInsets.only(top: _appBar + 20, left: 20, right: 20),
              child: FooterWidget(
                icon: Icons.arrow_back,
                fn: () => Modular.to.pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
