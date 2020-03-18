import 'package:flutter/material.dart';

class CardPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.orange[300],
      ),
      child: Stack(
        overflow: Overflow.clip,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Join Today",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600)),
                    Text("And Save Lives",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600)),
                    Text(
                      "Sheltes pets need your monthly gift",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(height: 20),
                    RaisedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 13.0, horizontal: 20.0),
                        child: Text(
                          "Donate",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 80,
            right: -60,
            child: Image.asset(
              "assets/images/cat2.png",
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
