import 'package:flutter/material.dart';
import 'package:travel_ui/constants.dart';
import 'package:travel_ui/widgets/circle_tab_indicator.dart';

class LocationSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Row(
              children: <Widget>[
                Text('Your', style: TextStyle(fontSize: 35.0, color: kSecondaryColor, fontFamily: 'Gilroy'),),
                Text(' Trips,', style: TextStyle(fontSize: 35.0, color: kPrimaryColor, fontFamily: 'Gilroy', fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05, 
              right: MediaQuery.of(context).size.width * 0.25, 
              bottom: MediaQuery.of(context).size.height * 0.02, 
            ),
            child: DefaultTabController(
              length: 3,
              child: TabBar(            
                indicator: CircleTabIndicator(color: kTertiaryColor, radius: 3),
                labelStyle: TextStyle(fontFamily: 'Gilroy', fontWeight: FontWeight.bold),
                labelColor: kTertiaryColor,
                unselectedLabelStyle:TextStyle(fontWeight: FontWeight.normal),
                tabs: [
                  Tab(text: 'Featured'),
                  Tab(text: 'Past',),
                  Tab(text: 'All',),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            color: localityList[index]['color'],
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all((MediaQuery.of(context).size.width / 2) * 0.1),
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Text(localityList[index]['location'], style: TextStyle(color: kPrimaryColor, fontFamily: 'Gilroy', fontWeight: FontWeight.bold, fontSize: 20.0),),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.location_on),
                                          Text(localityList[index]['country'], style: TextStyle(color: kPrimaryColor, fontFamily: 'Gilroy', fontSize: 20.0),),
                                        ],
                                      ),
                                    ],
                                  )
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}