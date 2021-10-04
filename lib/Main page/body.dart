import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Details.dart';
import 'package:plant_app/constants.dart';
import 'RecommendePlants.dart';
import 'Details.dart';
import 'body2.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size),
          SizedBox(height: 35.0,),
          titlescreen(title: "Recommended",),
          SizedBox(height: 25.0,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                RecommendedPlants(
                image: "Images/plant1.jpg",
                title: "Cactus",
                price: 500,
                country: "India",
                press: (){
                  WidgetsBinding.instance!.addPostFrameCallback((_) {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => DetailsScreen()));
                  });
                },
              ),
                RecommendedPlants(image: 'Images/plant1.jpg',
                    country: "Japan",
                    title: "Bonsai",
                    price: 500,
                    press: (){}),
                RecommendedPlants(image: "Images/plant1.jpg",
                    country: "India",
                    title: "MoneyPlant",
                    price: 500,
                    press: (){}),
             ],
            ),
          ),
          SizedBox(height: 25.0,),
          titlescreen(title: "Featured Plants",),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: KdefaultPadding,
                    top: KdefaultPadding/2,
                    bottom: KdefaultPadding/2,
                  ),
                  width: size.width*0.4,
                  height: 300,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("Images/plant1.jpg"),
                    ),

                  ),
    ),
                Container(
                  margin: EdgeInsets.only(
                    left: KdefaultPadding,
                    top: KdefaultPadding/2,
                    bottom: KdefaultPadding/2,
                  ),
                  width: size.width*0.4,
                  height: 300,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("Images/plant1.jpg"),
                    ),

                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: KdefaultPadding,
                    top: KdefaultPadding/2,
                    bottom: KdefaultPadding/2,
                  ),
                  width: size.width*0.4,
                  height: 300,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("Images/plant1.jpg"),
                    ),

                  ),
                ),
              ],
            ),
          ),
    ],
              ),
    );











          





  }

  Container HeaderWithSearchBox(Size size) {
    return Container(

        height: size.height*0.2,
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height*0.2-27,
              decoration: BoxDecoration(
                color: KprimaryColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36.0),
                    bottomRight: Radius.circular(36.0)
                ),

              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 30.0),
                child: Row(

                  children: <Widget>[
                    Text('Hi Uishopy !',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),

                    ),
                    Spacer(),
                    Icon(Icons.people,
                    color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: KdefaultPadding),
                padding: EdgeInsets.only(
                left: KdefaultPadding,
                    right: 10,
                    top: 5),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: KprimaryColor.withOpacity(.26),
                    ),
                  ]

                ),
                child: TextField(

                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: KprimaryColor.withOpacity(0.5),


                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,

                    suffixIcon: Icon(Icons.search),


                  ),
                ),


              ),
            )

          ],


        ),
      );
  }
}

class titlescreen extends StatelessWidget {
  const titlescreen({
    Key? key, required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40 ,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20.0),
            child: Row(
              children: [
                Text(
                  '$title',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsScreen()));
                      // WidgetsBinding.instance!.addPostFrameCallback((_) {
                      //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => DetailsScreen()));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.only(top: 1,bottom: 1),

                      backgroundColor: KprimaryColor,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                    ),


                    child: Text(
                      "More",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
          )

        ],

      ),


    );
  }
}


