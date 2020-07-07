import 'package:flutter/material.dart';
import 'package:travel_ui/constants.dart';
import 'square_category.dart';

class FourBoxes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SquareCategory(boxColor: Color(0XFF71cafa), boxIcon: Icons.airplanemode_active, boxName: 'Flights',),
          SquareCategory(boxColor: Color(0XFFf09564), boxIcon: Icons.hotel, boxName: 'Hotels',),
          SquareCategory(boxColor: kTertiaryColor, boxIcon: Icons.location_on, boxName: 'Places',),
          SquareCategory(boxColor: Color(0XFFe77766), boxIcon: Icons.more_horiz, boxName: 'More',),
        ],
      ),
    );
  }
}