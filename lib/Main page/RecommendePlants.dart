import 'package:flutter/material.dart';
import '../constants.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key? key, required this.image, required this.country, required this.title, required this.price, required this.press,

  }) : super(key: key);

  final String image,country,title;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap:(){},
      child: Container(
        margin: EdgeInsets.only(
          left: KdefaultPadding,
          top: KdefaultPadding/2,
          bottom: KdefaultPadding*2.5,
        ),
        width: size.width*0.4,
        child: Column(
          children: <Widget>[
            ClipRRect(

              child: Image.asset(image,

              ),
            ),
            Container(


              padding: EdgeInsets.all(KdefaultPadding/2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),

                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: KprimaryColor.withOpacity(0.23),

                    )
                  ]
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$title\n",
                            style: TextStyle(
                              color: KprimaryColor,
                            ),

                          ),
                          TextSpan(
                            text: "$country",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ]


                    ),
                  ),
                  Spacer(),
                  Text(
                    "$price",
                    style: TextStyle(

                      color: Colors.green,
                    ),
                  )

                ],
              ),
            )

          ],
        ),

      ),
    );
  }
}