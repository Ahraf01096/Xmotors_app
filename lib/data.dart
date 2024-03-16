import 'package:flutter/material.dart';

class NavigationItem {

  IconData iconData;

  NavigationItem(this.iconData);

}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    NavigationItem(Icons.home),
    NavigationItem(Icons.calendar_today),
    NavigationItem(Icons.notifications),
    NavigationItem(Icons.person),
  ];
}

class Car {

  String brand;
  String model;
  String price;
  String one;
  String three;
  String five;
  String condition;
  String modelyear;
  String color;
  String gearbox;
  String seat;
  String motor;
  String speed;
  String topspeed;

  List<String> images;

  Car(this.brand, this.model, this.price, this.one, this.three, this.five, this.condition, this.images,
      this.modelyear, this.color, this.gearbox, this.seat , this.motor, this.speed,
      this.topspeed);

}

List<Car> getCarList(){
  return <Car>[
    Car(
      "Land Rover",
      "Discovery",
      "2,500,000",
      "20,600",
      "16,700",
      "13,200",
      "Weekly",
      [
        "assets/images/land_rover_0.png",
        "assets/images/land_rover_1.png",
        "assets/images/land_rover_2.png",
      ],
      "2022",
      "White",
      "Automatic",
      "4",
      "V8 4.6",
      "3.2 sec",
      "220 km/h",
    ),
    Car(
      "Alfa Romeo",
      "C4",
      "3500000",
      "72829",
      "5800",
      "3637",
      "Monthly",
      [
        "assets/images/alfa_romeo_c4_0.png",
      ],
      "2023",
      "Grey",
      "Automatic",
      "2",
      "V8 4.6",
      "2.5 sec",
      "280 km/h",
    ),
    Car(
      "Nissan",
      "GTR",
      "1500000",
      '50800',
      "30400",
      "15900",
      "Daily",
      [
        "assets/images/nissan_gtr_0.png",
        "assets/images/nissan_gtr_1.png",
        "assets/images/nissan_gtr_2.png",
        "assets/images/nissan_gtr_3.png",
      ],
      "2022",
      "White",
      "Automatic",
      "4",
      "V8 4.6",
      "3.2 sec",
      "220 km/h",
    ),
    Car(
      "Acura",
      "MDX 2020",
      "2250000",
      '50800',
      "30400",
      "15900",
      "Monthly",
      [
        "assets/images/acura_0.png",
        "assets/images/acura_1.png",
        "assets/images/acura_2.png",
      ],
      "2022",
      "White",
      "Automatic",
      "4",
      "V8 4.6",
      "3.2 sec",
      "220 km/h",
    ),
    Car(
      "Chevrolet",
      "Camaro",
      "3405000",
      '50800',
      "30400",
      "15900",
      "Weekly",
      [
        "assets/images/camaro_0.png",
        "assets/images/camaro_1.png",
        "assets/images/camaro_2.png",
      ],
      "2022",
      "White",
      "Automatic",
      "4",
      "V8 4.6",
      "3.2 sec",
      "220 km/h",
    ),
    Car(
      "Ferrari",
      "Spider 488",
      "4205000",
      '50800',
      "30400",
      "15900",
      "Weekly",
      [
        "assets/images/ferrari_spider_488_0.png",
        "assets/images/ferrari_spider_488_1.png",
        "assets/images/ferrari_spider_488_2.png",
        "assets/images/ferrari_spider_488_3.png",
        "assets/images/ferrari_spider_488_4.png",
      ],
      "2022",
      "White",
      "Automatic",
      "4",
      "V8 4.6",
      "3.2 sec",
      "220 km/h",
    ),
    Car(
      "Ford",
      "Focus",
      "230000",
      '50800',
      "30400",
      "15900",
      "Weekly",
      [
        "assets/images/ford_0.png",
        "assets/images/ford_1.png",
      ],
      "2022",
      "White",
      "Automatic",
      "4",
      "V8 4.6",
      "3.2 sec",
      "220 km/h",
    ),
    Car(
      "Fiat",
      "500x",
      "145000",
      '50800',
      "30400",
      "15900",
      "Weekly",
      [
        "assets/images/fiat_0.png",
        "assets/images/fiat_1.png",
      ],
      "2022",
      "White",
      "Automatic",
      "4",
      "V8 4.6",
      "3.2 sec",
      "220 km/h",
    ),
    Car(
      "Honda",
      "Civic",
      "190000",
      '50800',
      "30400",
      "15900",
      "Daily",
      [
        "assets/images/honda_0.png",
      ],
      "2022",
      "White",
      "Automatic",
      "4",
      "V8 4.6",
      "3.2 sec",
      "220 km/h",
    ),
    Car(
      "Citroen",
      "Picasso",
      "120230",
      '50800',
      "30400",
      "15900",
      "Monthly",
      [
        "assets/images/citroen_0.png",
        "assets/images/citroen_1.png",
        "assets/images/citroen_2.png",
      ],
      "2022",
      "White",
      "Automatic",
      "4",
      "V8 4.6",
      "3.2 sec",
      "220 km/h",
    ),
  ];
}

class Porsche {

  String brand;
  String model;
  String price;
  String one;
  String three;
  String five;
  String condition;
  String modelyear;
  String color;
  String gearbox;
  String seat;
  String motor;
  String speed;
  String topspeed;

  List<String> images;

  Porsche(this.brand, this.model, this.price, this.one, this.three, this.five, this.condition, this.images,
      this.modelyear, this.color, this.gearbox, this.seat , this.motor, this.speed,
      this.topspeed);

}

List<Car> getPorscheList(){
  return <Car>[
    Car(
      "Porsche",
      "911 Turbo S ",
      "20,950,000",
      "670,600",
      "340,700",
      "250,200",
      "Weekly",
      [
        "assets/images/turboo.webp",
        "assets/images/turboos.png",
      ],
      "2023",
      "Multi",
      "Automatic",
      "2",
      "V6 4.0",
      "2.7 sec",
      "330 km/h",
    ),
    Car(
      "Porsche",
      "Cayenne Turbo GT",
      "14,800,000",
      '1,190,800',
      "860,400",
      "445,900",
      "Daily",
      [
        "assets/images/cayann.png",
        "assets/images/cayan.png",

      ],
      "2023",
      "multi",
      "Automatic",
      "4",
      "V8 4.6",
      "3.3 sec",
      "305 km/h",
    ),
    Car(
      "Porsche",
      "Panamera",
      "10,950,000",
      "970,600",
      "640,700",
      "450,200",
      "Weekly",
      [
        "assets/images/pane.png",
        "assets/images/panemera.png"
      ],
      "2023",
      "Multi",
      "Automatic",
      "4",
      "V6 4.0",
      "5.6 sec",
      "270 km/h",
    ),
  ];
}

class Bmw {

  String brand;
  String model;
  String price;
  String one;
  String three;
  String five;
  String condition;
  String modelyear;
  String color;
  String gearbox;
  String seat;
  String motor;
  String speed;
  String topspeed;

  List<String> images;

  Bmw(this.brand, this.model, this.price, this.one, this.three, this.five, this.condition, this.images,
      this.modelyear, this.color, this.gearbox, this.seat , this.motor, this.speed,
      this.topspeed);

}

List<Car> getBmwList(){
  return <Car>[
    Car(
      "Bmw",
      "X6 m60i ",
      "5,500,000",
      "20,600",
      "16,700",
      "13,200",
      "Weekly",
      [
        "assets/images/x61.png",
        "assets/images/x63.png",
        "assets/images/x64.png",
      ],
      "2022",
      "Black",
      "Automatic",
      "4",
      "V8 4.6",
      "3.0 sec",
      "280 km/h",
    ),
    Car(
      "BMW",
      "X7 M50i",
      "6500000",
      "732829",
      "50800",
      "30637",
      "Monthly",
      [
        "assets/images/x71.jpg",
        "assets/images/x72.jpg",
        "assets/images/x73.jpg",
      ],
      "2019",
      "White",
      "Automatic",
      "7",
      "V6 4.6",
      "10.5 sec",
      "260 km/h",
    ),
    Car(
      "BMW",
      "X5 M50",
      "6,800,000",
      '90,800',
      "60,400",
      "45,900",
      "Daily",
      [
        "assets/images/x51.jpg",
        "assets/images/x52.jpg",
      ],
      "2023",
      "Dark blue",
      "Automatic",
      "4",
      "V8 4.6",
      "3.2 sec",
      "220 km/h",
    ),
  ];
}

class ziny {

  String brand;
  String model;
  String price;
  String one;
  String three;
  String five;
  String condition;
  String modelyear;
  String color;
  String gearbox;
  String seat;
  String motor;
  String speed;
  String topspeed;

  List<String> images;

  ziny(this.brand, this.model, this.price, this.one, this.three, this.five, this.condition, this.images,
      this.modelyear, this.color, this.gearbox, this.seat , this.motor, this.speed,
      this.topspeed);

}

List<Car> getzinyList(){
  return <Car>[
    Car(
      "Honda",
      "Civic",
      "190000",
      '50800',
      "30400",
      "15900",
      "Daily",
      [
        "assets/images/honda_0.png",
      ],
      "2016",
      "White",
      "Automatic",
      "4",
      "V8 4.6",
      "3.2 sec",
      "220 km/h",
    ),
    Car(
      "BMW",
      "X7 M50i",
      "6500000",
      "732829",
      "50800",
      "30637",
      "Monthly",
      [
        "assets/images/x71.jpg",
        "assets/images/x72.jpg",
        "assets/images/x73.jpg",
      ],
      "2019",
      "White",
      "Automatic",
      "7",
      "V6 4.6",
      "10.5 sec",
      "260 km/h",
    ),
    Car(
      "Citroen",
      "Picasso",
      "120230",
      '50800',
      "30400",
      "15900",
      "Monthly",
      [
        "assets/images/citroen_0.png",
        "assets/images/citroen_1.png",
        "assets/images/citroen_2.png",
      ],
      "2012",
      "White",
      "Automatic",
      "4",
      "V8 4.6",
      "3.2 sec",
      "220 km/h",
    ),
    Car(
      "Chevrolet",
      "Camaro",
      "3405000",
      '50800',
      "30400",
      "15900",
      "Weekly",
      [
        "assets/images/camaro_0.png",
        "assets/images/camaro_1.png",
        "assets/images/camaro_2.png",
      ],
      "2022",
      "White",
      "Automatic",
      "4",
      "V8 4.6",
      "3.2 sec",
      "220 km/h",
    ),
  ];
}
class Dealer {

  String name;
  int offers;
  String image;


  Dealer(this.name, this.offers, this.image);

}

List<Dealer> getDealerList(){
  return <Dealer>[
    Dealer(
      "El ziny",
      174,
      "assets/ziny/elziny.png",
    ),

  Dealer(
      "Avis",
      126,
      "assets/images/avis.png",
    ),
    Dealer(
      "Tesla",
      89,
      "assets/images/tesla.jpg",
    ),
  ];
}

class Filter {

  String name;

  Filter(this.name);

}

List<Filter> getFilterList(){
  return <Filter>[
    Filter("Best Match"),
    Filter("Highest Price"),
    Filter("Lowest Price"),
  ];
}