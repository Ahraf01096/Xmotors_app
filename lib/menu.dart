import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xmotors/cars/bmw.dart';
import 'package:xmotors/cars/porcshe.dart';
import 'package:xmotors/constants.dart';

class menu extends StatefulWidget {

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      width: double.infinity,
      height: 1000,
      child: ListView(
        // Remove padding
        padding: EdgeInsets.only(top: 20,left: 10,right: 10),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 75),
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
          Divider(),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PORSCHE() )
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white70,
              ),
              child: ListTile(
                leading: Image.asset("assets/images/newpor.webp",width: 45,height: 45),
                title:
                Text('Porsche', style:
                TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                )
                ),

              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white70,
            ),
            child: ListTile(
              leading: Image.asset("assets/images/ferr.webp",width: 45,height: 45),
              title:
              Text('Ferrari', style:
              TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )
              ),

            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white70,
            ),
            child: ListTile(
              leading: Image.asset("assets/images/logolambo.webp",width: 40,height: 40),
              title:
              Text('Lamborghini', style:
              TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )
              ),

            ),
          ),
          SizedBox(height: 10,),
          Divider(),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BMW() )
              );
            },
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white70,),
              child: ListTile(
                leading: Image.asset("assets/images/newbmw.webp",height: 40,width: 40,),
                title:
                Text('Bmw', style:
                TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                )
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white70,
            ),
            child: ListTile(
              leading: Image.asset("assets/images/newmar.webp",width: 45,height: 45),
              title:
              Text('Mercedes', style:
              TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white70,
            ),
            child: ListTile(
              leading: Image.asset("assets/images/newaudi.webp",width: 45,height: 45),
              title:
              Text('Audi', style:
              TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )
              ),

            ),
          ),
          SizedBox(height: 10,),
          Divider(),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white70,
            ),
            child: ListTile(
              leading: Image.asset("assets/images/newtyot.webp",width: 45,height: 45),
              title:
              Text('Toyota', style:
              TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )
              ),

            ),
          ),


          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white70,
            ),
            child: ListTile(
              leading: Image.asset("assets/images/newhyn.webp",width: 45,height: 45),
              title:
              Text('Hyundai', style:
              TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )
              ),

            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white70,
            ),
            child: ListTile(
              leading: Image.asset("assets/images/newkia.jpg",width: 45,height: 45),
              title:
              Text('Kia', style:
              TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )
              ),

            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white70,
            ),
            child: ListTile(
              leading: Image.asset("assets/images/lans.webp",width: 40,height: 40),
              title:
              Text('Mitsubishi', style:
              TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )
              ),

            ),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white70,
            ),
            child: ListTile(
              leading: Image.asset("assets/images/newnissan.webp",width: 45,height: 45),
              title:
              Text('Nissan', style:
              TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )
              ),

            ),
          ),
        ],
      ),
    );
  }
}