import 'package:flutter/material.dart';
import 'package:travel_ui/constants.dart';

class SquareCategory extends StatelessWidget {

  SquareCategory({this.boxColor, this.boxIcon, this.boxName});

  Color boxColor;
  IconData boxIcon;
  String boxName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          Container(
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(boxIcon, color: Colors.white,),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: boxColor,
                boxShadow: [
                  BoxShadow(
                    color: boxColor.withOpacity(.2),
                    offset: Offset(5, 5),
                    blurRadius: 11.0,
                    spreadRadius: 5.0
                  ),
                ],
              ),
            ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          boxName,
          style: TextStyle(
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.bold,
            color: kPrimaryColor
          ),
        ),
      ],
    );
  }
}