import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xmotors/book_car.dart';
import 'package:xmotors/menu.dart';
import 'constants.dart';
import 'data.dart';
import 'car_widget.dart';
import 'dealers_widget.dart';
import 'available_cars.dart';
import 'search.dart';
import 'ziny.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<String> images = <String>[
    "assets/ziny/elziny.png",
    "assets/khaled/kh.jpg",
    "assets/prime/prime.jpg",
  ];

  final List<String> names = <String>[
    "El Ziny",
    "Khaled Aboud",
    "Prime",
  ];

  final List<Widget> buttons = <Widget>[
    elziny(),
    elziny(),
    elziny(),
  ];

  List<NavigationItem> navigationItems = getNavigationItemList();
  late NavigationItem selectedItem;

  List<Car> cars = getCarList();
  List<Dealer> dealers = getDealerList();

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedItem = navigationItems[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              menu(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  border: Border.all(
                    color: Colors.white,
                  )
              ),
              child: IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(Icons.menu_outlined,
                size: 28,),
                color: Colors.black,
              ),
            ),
          );
        }),
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Row(
            children: [
              Text(
                'X',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: kPrimaryColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                ' Motors',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        centerTitle: false,
        actions: [

        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: GestureDetector(

                child: TextField(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Search() )
                    );
                  },
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 0, style: BorderStyle.none),
                    ),
                    filled: true,
                    fillColor: Colors.grey[100],
                    contentPadding: EdgeInsets.only(left: 30),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(right: 24, left: 16),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TOP DEALS',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[400],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'view all',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: kPrimaryColor,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: kPrimaryColor,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 280,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: buildDeals(),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                      MaterialPageRoute(builder: (context) => AvailableCars() )
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Container(
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            )),
                        padding: EdgeInsets.all(24),
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  " Available Cars",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  " Long term and short term",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              height: 50,
                              width: 50,
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: kPrimaryColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TOP DEALERS',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[400],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'view all',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: kPrimaryColor,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: kPrimaryColor,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: SizedBox(
                            height: 120,
                            child: new ListView.separated(
                              itemCount: names.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)=> buttons[index])
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.white,
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Container(
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),color: Colors.white),
                                          child: Image.asset(images[index],fit: BoxFit.scaleDown,),
                                          width: 100,
                                          height: 100,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) => SizedBox(
                                width: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,)
                ],
              ),
            ),
          ))
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: buildNavigationItems(),
        ),
      ),
    );
  }

  List<Widget> buildDeals() {
    List<Widget> list = [];
    for (var i = 0; i < cars.length; i++) {
      list.add(GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BookCar(car: cars[i])),
            );
          },
          child: buildCar(cars[i], i)));
    }
    return list;
  }

  List<Widget> buildDealers() {
    List<Widget> list = [];
    for (var i = 0; i < dealers.length; i++) {
      list.add(buildDealer(dealers[i], i));
    }
    return list;
  }

  List<Widget> buildNavigationItems() {
    List<Widget> list = [];
    for (var i = 0; i < navigationItems.length; i++) {
      list.add(buildNavigationItem(navigationItems[i]));
    }
    return list;
  }

  Widget buildNavigationItem(NavigationItem item) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedItem = item;
        });
      },
      child: Container(
        width: 50,
        child: Stack(
          children: [
            selectedItem == item
                ? Center(
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColorShadow,
                ),
              ),
            )
                : Container(),
            Center(
              child: Icon(
                item.iconData,
                color: selectedItem == item ? kPrimaryColor : Colors.grey[400],
                size: 24,
              ),
            )
          ],
        ),
      ),
    );
  }
}
