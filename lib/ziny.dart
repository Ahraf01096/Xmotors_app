

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_car.dart';
import 'car_widget.dart';
import 'constants.dart';
import 'data.dart';

class elziny extends StatefulWidget {

  @override
  State<elziny> createState() => _elzinyState();
}

class _elzinyState extends State<elziny> {

  List<Filter> filter = getFilterList();
  late Filter selectedFilter;

  @override
  void initState(){
    super.initState();
    setState(() {
      selectedFilter = filter[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.all(
                        color: Colors.grey.shade300,
                      )
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'ziny Cars(' + getzinyList().length.toString() + ")",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                  child: GridView.count(
                    physics: BouncingScrollPhysics(),
                    childAspectRatio: 1.9 / 1.2,
                    crossAxisCount: 1,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 30,
                    children: getzinyList().map((item){
                      return GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BookCar(car : item)),);
                          },
                          child: buildCar(item, 0));
                    }).toList(),
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child : Row(
          children: [
            buildFilterIcon(),
            Row(
              children: buildFilters(),
            )
          ],
        ),
      ),
    );
  }
  Widget buildFilterIcon(){
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(15),)
      ),
      child: Center(
        child: Icon(
          Icons.filter_list,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }
  List<Widget> buildFilters(){
    List<Widget> list = [];
    for (var i = 0; i < filter.length; i++){
      list.add(buildFilter(filter[i]));
    }
    return list;
  }
  Widget buildFilter(Filter filter){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedFilter = filter;
        });
      },
      child: Padding(
        padding:EdgeInsets.only(right: 8,),
        child: Text(filter.name,
          style: TextStyle(
            color: selectedFilter == filter ? kPrimaryColor : Colors.grey[300],
            fontSize: 16,
            fontWeight: selectedFilter == filter ? FontWeight.w500 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
