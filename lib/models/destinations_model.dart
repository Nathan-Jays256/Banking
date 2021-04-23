import 'activity_model.dart';

class Destination{
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });

}
List<Activity> activities =[
  Activity(
    imageUrl: 'assets/images/Bonvecchi-venice.jpg',
    name: 'Bonvechi Venice Hotel',
    type: 'Venice Tour',
    startTimes: ['9:00 am','11:00 am'],
    rating: 5,
    price: 50

  ),
  Activity(
    imageUrl: 'assets/images/fascoli-venice-hotel1.jpg',
    name: 'Fascoli Venice Hotel',
    type: 'Venice Tour',
    startTimes: ['10:00 am','12:00 am'],
    rating: 5,
    price: 50

  ),
  Activity(
    imageUrl: 'assets/images/venice-hotel-Gay.jpg',
    name: 'Gay Venice Hotel',
    type: 'Venice TourX',
    startTimes: ['9:00 am','01:00 pm'],
    rating: 2,
    price: 50

  ),
  Activity(
    imageUrl: 'assets/images/pennisula-hotel-france.jpg',
    name: 'Penissula Hotel',
    type: 'Venice TourXI',
    startTimes: ['9:00 am','02:00 pm'],
    rating: 3,
    price: 50

  ),
  Activity(
    imageUrl: 'assets/images/venice1_royalsanmarcovenice.jpg',
    name: 'royal san marcovenice Hotel',
    type: 'Venice Tour',
    startTimes: ['9:00 am','12:00 pm'],
    rating:1,
    price: 50

  ),

];
List<Destination> destinations =[
  Destination(
    imageUrl: 'assets/images/2.jpg',
    city: 'New York',
    country: 'USA',
    description: 'visit America for an amazing and unforgetable adventure',
    activities:activities
  ),
    Destination(
    imageUrl: 'assets/images/venice1.jpg',
    city: 'Venice',
    country: 'Italy',
    description: 'visit Italy for an amazing and unforgetable adventure',
    activities:activities
  ),
      Destination(
    imageUrl: 'assets/images/paris2.jpg',
    city: 'Paris',
    country: 'France',
    description: 'visit France for an amazing and unforgetable adventure',
    activities:activities
  ),
        Destination(
    imageUrl: 'assets/images/UK-London.jpg',
    city: 'London',
    country: 'United Kingdom',
    description: 'visit UK for an amazing and unforgetable adventure',
    activities:activities
  ),
          Destination(
    imageUrl: 'assets/images/venice.jpg',
    city: 'Kampala',
    country: 'Uganda',
    description: 'visit Uganda for an amazing and unforgetable adventure',
    activities:activities
  ),
];