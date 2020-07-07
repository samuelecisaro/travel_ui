import 'package:flutter/material.dart';
import 'package:travel_ui/constants.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Hi', style: TextStyle(fontSize: 40.0, color: kSecondaryColor, fontFamily: 'Gilroy'),),
              Text(' Cara,', style: TextStyle(fontSize: 40.0, color: kPrimaryColor, fontFamily: 'Gilroy', fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Let\'s Discover a New Adventure!', style: TextStyle(fontSize: 15.0, color: kSecondaryColor),)
          ),
          SizedBox(
            height: 60.0,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
              color: kBackgroundGrey,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 6,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: kTertiaryColor, size: 30.0,),
                        border: InputBorder.none,
                        hintText: "Search Hotel, Taxi etc",
                        hintStyle: TextStyle(color: kSecondaryColor)
                      ),
                    ),
                  ),
                  Container(height: 60, child: VerticalDivider(color: kSecondaryColor, indent: 10, endIndent: 10,),),
                  Expanded(
                    flex: 1,
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                          return Padding(
                            padding: EdgeInsets.only(left: constraints.maxWidth/8),
                            child: DropdownButton(
                            icon: Icon(Icons.keyboard_arrow_down),
                            underline: Container(),
                            iconSize: 25.0,
                            ),
                          );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}