import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/models/destinations_model.dart';
import 'package:travelapp/screens/destination_screen.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal:20.0 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                     Text(
                       'Top Destination',
                       style: TextStyle(
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold, 
                         letterSpacing: 1.5,
                       ),
                       ),
                  GestureDetector(
                    onTap: () =>
                      print('See All'),
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0
                      ),),
                  )
                  ]

                ),
              ),
              Container(
                height: 250.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: destinations.length,
                  itemBuilder: (BuildContext context, int index){
                    Destination destination = destinations[index];
                    return GestureDetector(
                      onTap: () => Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (_) => DestinationScreen(
                            destination: destination
                            ))),
                                          child: Container(
                        margin: EdgeInsets.all(5.0),
                        width: 180.0,
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                          Positioned(
                            bottom: 0.0,
                            child: Container(
                              height: 100.0,
                              width: 180.0,
                              decoration:  BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0), 
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                  Text(
                                    '${destination.activities.length} activities',
                                    style:  TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2
                                    ),
                                    ),
                                  Text(
                                    destination.description, 
                                    style: TextStyle(
                                      color: Colors.grey
                                      ,)),
                                ]),
                              ),
                              ),
                          ),  
                            Positioned(
                              bottom: 80.0,
                                                        child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 3.0),
                                    blurRadius: 6.0

                                  )]
                                ),
                                child: Stack(
                                  children:<Widget>[
                                    Hero(
                                      tag: destination.imageUrl,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10.0),
                                        child: Image(
                                          width: 140.0,
                                          height: 140.0,
                                          image: AssetImage(destination.imageUrl),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 10.0,
                                      bottom: 10.0,
                                      child: Column(
                                        crossAxisAlignment:  CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            destination.city, 
                                            style: TextStyle(
                                              color: Colors.white, 
                                              fontSize: 18.0, 
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1.2
                                              ),),
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                FontAwesomeIcons.locationArrow,
                                                size: 8.0,
                                                color: Colors.orange,
                                                ),
                                                SizedBox(width:5.0),
                                              Text(
                                                destination.country,
                                                style: TextStyle(
                                                  color: Colors.orange

                                                ),
                                                ),
                                            ],
                                          )
                                        ]
                                      ),
                                    )
                                ]),
                                
                              ),
                            )
                        ]),
                      ),
                    );
                    
                  },
                ),

              )
            ]
          );
  }
}