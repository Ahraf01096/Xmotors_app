import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xmotors/book_car.dart';
import 'package:xmotors/car_widget.dart';
import 'data.dart';
import 'constants.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                'Available Cars(' + getCarList().length.toString() + ")",
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
                    childAspectRatio: 1 / 1.65,
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 15,
                    children: getCarList().map((item){
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
    );
  }
}
