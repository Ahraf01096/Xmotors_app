import 'package:flutter/material.dart';
import 'data.dart';
import 'constants.dart';

Widget buildCar(Car car , int index){
return Container(
  decoration: BoxDecoration(color: Colors.white,
  borderRadius: BorderRadius.all(
     Radius.circular(15),
  ),
  ),
  padding: EdgeInsets.all(6),
  margin: EdgeInsets.only(right: index != null ? 16 : 0 , left:index != null ? 16 : 0  ),
  width: 280,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Align(
        alignment: Alignment.centerRight ,
        child: Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Padding(
            padding:EdgeInsets.symmetric(horizontal: 8, vertical: 6) ,
            child: Text(car.modelyear,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),),
          ),
        ),
      ),
      Container(
        height: 160,
        child: Center(
          child: Image.asset(car.images[0],
          fit: BoxFit.fitWidth,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Row(
          children: [
            Text(car.brand,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                height: 1,
              ),
            ),
            SizedBox(width: 2,),
            Text(car.model,
            style: TextStyle(
              fontSize: 18,
            ),
            ),
          ],
        ),
      ),

    ],
  ),
);
}