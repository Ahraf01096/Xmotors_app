import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'constants.dart';


class BookCar extends StatefulWidget {
final Car car;

BookCar({required this.car});
  @override
  State<BookCar> createState() => _BookCarState();
}

class _BookCarState extends State<BookCar> {
 int _currentImage = 0;

// List<Widget> list =[];
 List<Widget> buildPageIndicator(){
   List<Widget> list =[];
   for(var i = 0; i < widget.car.images.length; i++){
     list.add(buildIndicator(i == _currentImage));
   }
   return list;
 }

 Widget buildIndicator(bool isActive){
   return AnimatedContainer(
       duration: Duration(milliseconds: 150),
   margin: EdgeInsets.symmetric(horizontal: 6),
     height: 8,
     width: isActive ? 20 : 8,
     decoration: BoxDecoration(
       color: isActive ? Colors.black : Colors.grey[400],
       borderRadius: BorderRadius.all(
         Radius.circular(12),
       )
     ),
   );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:  EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              Row(
                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.bookmark_border,
                                      color: Colors.white,
                                      size: 22,
                                    ),
                                  ),

                                  SizedBox(
                                    width: 16,
                                  ),

                                  Container(
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
                                      Icons.share,
                                      color: Colors.black,
                                      size: 22,
                                    ),
                                  ),
                                ],
                              )

                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),

                        Padding(
                            padding: EdgeInsets.symmetric(horizontal:16),
                          child: Text(
                            widget.car.model,
                            style: TextStyle(
                              fontSize: 36,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal:16),
                          child: Text(
                            widget.car.brand,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 8,
                        ),

                        Expanded(
                            child: Container(
                              child: PageView(
                                physics: BouncingScrollPhysics(),
                                onPageChanged: (int page) {
                                  setState(() {
                                    _currentImage = page;
                                  });
                                },
                                children:
                                  widget.car.images.map((path){
                                    return Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                                      padding: EdgeInsets.symmetric(horizontal: 16),
                                      child: Image.asset(
                                        path,
                                        fit: BoxFit.scaleDown,
                                      ),
                                    );
                                  }).toList(),
                              ),
                            ),
                        ),

                        widget.car.images.length > 1
                        ? Container(
                          margin: EdgeInsets.symmetric(vertical: 16),
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: buildPageIndicator(),
                          ),
                        )
                        : Container(),
                        Container(
                          height: 110,
                          padding: EdgeInsets.only(top: 4,left: 16),
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: [
                              buildPricePerPeriod(
                                "Cash",
                                widget.car.price,
                              ),
                              SizedBox(
                                width: 10 ,
                              ),
                              buildPricePerPeriod(
                                "1 year",
                                widget.car.one,
                              ),
                              SizedBox(
                                width: 10 ,
                              ),
                              buildPricePerPeriod(
                                "3 years",
                                widget.car.three,
                              ),
                              SizedBox(
                                width: 10 ,
                              ),
                              buildPricePerPeriod(
                                "5 years",
                                widget.car.five,
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)
                  ),
                ),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding:EdgeInsets.only(top: 16 ,left: 16,right: 16),
                      child: Text(
                        "SPECITICATIONS",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),

                    Container(
                      height: 80,
                      padding: EdgeInsets.only(top: 8,left: 16),
                      margin: EdgeInsets.only(bottom: 16),
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildSpecificationCar("Model", widget.car.modelyear),
                          buildSpecificationCar("Color", widget.car.color),
                          buildSpecificationCar("Gearbox", widget.car.gearbox),
                          buildSpecificationCar("Seat", widget.car.seat),
                          buildSpecificationCar("Motor", widget.car.motor),
                          buildSpecificationCar("Speed (0-100)", widget.car.speed),
                          buildSpecificationCar("Top Speed", widget.car.topspeed),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildPricePerPeriod(String years, String price, ){
   return Container(
     height: 120,
     width: 115,
     decoration: BoxDecoration(
       color:  JPrimaryColor ,
       borderRadius: BorderRadius.all(
         Radius.circular(15),
       ),
       border: Border.all(
           color: Colors.grey.shade300,
       )
     ),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Padding(
           padding: const EdgeInsets.only(top: 3),
           child: Text(
             years ,
             style: TextStyle(
               color:  Colors.white70 ,
               fontSize: 18,
               fontWeight: FontWeight.w500
             ),
           ),
         ),
         SizedBox(height: 10,),
         Text(
           price,
           style: TextStyle(
               color: Colors.white ,
               fontSize: 14,
               fontWeight: FontWeight.w500
           ),
         ),
         Text(
           "EGP",
           style: TextStyle(
               color:  Colors.white ,
               fontSize: 14,
               fontWeight: FontWeight.w500
           ),
         ),
       ],
     ),
   );
  }
  Widget buildSpecificationCar(String title, String data) {
   return Container(
     width: 130,
     decoration: BoxDecoration(
       color: Colors.white,
       borderRadius:BorderRadius.all(
         Radius.circular(15),
       )
     ),
     padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
     margin: EdgeInsets.only(right: 16),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text(
           title,
           style: TextStyle(
             color: Colors.grey,
             fontSize: 14,
           ),
         ),
         SizedBox(
           height: 8,
         ),
         Text(
           data,
           style: TextStyle(
             color: Colors.black,
             fontSize: 18,
             fontWeight: FontWeight.w500
           ),
         ),
       ],
     ),
   );
  }
}
