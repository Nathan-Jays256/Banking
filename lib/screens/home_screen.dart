import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/widgets/Hotel_carasoule.dart';
import 'package:travelapp/widgets/destination_carasoule.dart';


class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen>{
  int _selectedIndex = 0;
  int _currentTab = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking

  ];
  Widget _buildIcon(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
        print(index);

      },
          child: Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          color: _selectedIndex==index ? Theme.of(context).accentColor: Color(0xFFE7EBEE),
           borderRadius: BorderRadius.circular(25.0) 
           ),
        child: Icon(
          _icons[index],
          size: 20.0, 
          color: _selectedIndex == index ? Theme.of(context).primaryColor : Color(0xFFB4C1C4)
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(child: 
      ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left:20.0, right: 30.0),
            child: Text('What would you like to find?', 
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold
            )
            ),
          ),
          SizedBox(height: 18.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _icons.asMap()
            .entries
            .map((MapEntry map)=>_buildIcon(map.key))
            .toList(),
          ),
          SizedBox(height:20.0),
          DestinationCarousel(),
          SizedBox(height:20.0),
          HotelCarousel(),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap:(int value){
          setState(() {
            _currentTab = value;
          });
        } ,
        items: [
          BottomNavigationBarItem(
          icon: Icon(Icons.search, size:20.0),
          title: SizedBox.shrink()
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.local_bar, size:20.0),
          title: SizedBox.shrink()
        ),
         BottomNavigationBarItem(
          icon: CircleAvatar(radius:15.0, backgroundImage: AssetImage('assets/images/2.jpg'),),
          title: SizedBox.shrink()
        )
        ],)
    );
  }
}