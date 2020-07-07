import 'package:flutter/material.dart';
import 'package:travel_ui/constants.dart';

class HeaderTravelUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset("assets/images/menu.png", width: 35.0, color: kPrimaryColor,),
        Row(
          children: <Widget>[
            Icon(Icons.location_on),
            Text('Los Angeles', style: TextStyle(color: kPrimaryColor, fontFamily: 'Gilroy', fontWeight: FontWeight.w600),),
            Text(', California', style: TextStyle(color: kPrimaryColor, fontFamily: 'Gilroy',),),
          ],
        ),
        CircleAvatar(
          backgroundImage: NetworkImage("https://images.vanityfair.it/wp-content/uploads/2019/02/08144906/cara-p.jpg"),
        ),
      ],
    );
  }
}