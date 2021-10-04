import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: KdefaultPadding*3),
            child: SizedBox(
              height: size.height*0.8,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: KdefaultPadding*3),
                      child: Column(

                        children: <Widget>[
                          Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                padding: EdgeInsets.symmetric(horizontal: KdefaultPadding),
                                  onPressed: (){
                                    WidgetsBinding.instance!.addPostFrameCallback((_) {
                                      Navigator.pop(context);
                                    });
                                  },
                                  icon: Icon(Icons.keyboard_return)),
                          ),
                          Spacer(),
                          IconCard(i: Icon(Icons.wb_sunny,size: 35,color: Colors.green,)),
                          IconCard(i: Icon(Icons.settings_system_daydream,size: 35,color: Colors.green,)),
                          IconCard(i: Icon(Icons.cloud,size: 35,color: Colors.green,)),
                          IconCard(i: Icon(Icons.thermostat_rounded,size: 35,color: Colors.green,)),
                        ],


                  ),
                    ),
                  ),
                  Container(
                    height: size.height*0.8 ,
                    width: size.width*0.75,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      image: DecorationImage(
                        alignment: Alignment.topCenter,
                        fit: BoxFit.cover,
                        image: AssetImage("Images/plant2.jpg",),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,10),
                          blurRadius: 30,
                          color: KprimaryColor.withOpacity(0.4),
                        )
                      ]
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,bottom: 16.0,right: 16.0),
            child: Row(

              children: <Widget>[
               RichText(
                   text: TextSpan(
                     children: [
                       TextSpan(
                         text: "Angelica\n",
                         style: TextStyle(
                           fontSize: 35.0,
                           color: Colors.black45,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       TextSpan(
                           text: "Russia",
                           style: TextStyle(
                             fontSize: 25.0,
                             color: KprimaryColor,

                           ),
                       ),

                     ],
                   ),


               ),
                Spacer(),
                Text(
                  "\$440",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                    fontSize: 35.0,
                  ),
                )

              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width/2,
                height: 84,
                child: TextButton(
                  style: TextButton.styleFrom(
                   backgroundColor: KprimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                      )
                    )
                  ),
                  child: Text("Buy Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                  onPressed: (){},
                ),



              ),
              SizedBox(
                width: size.width/2,
                height: 84,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,

                  ),
                  child: Text("Description",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),),
                  onPressed: (){},
                ),



              )
            ],
          )

        ],

      ),
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key, required this.i,


  }) : super(key: key);

final Icon i ;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height*0.03),
      height: 62,
        width:62,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(

            color: KprimaryColor.withOpacity(0.2),
            blurRadius: 20.0,
            offset: Offset(0,10),
          ),
          BoxShadow(
            offset: Offset(-15,-15),
            blurRadius: 20,
            color: Colors.white,
          )
        ]
      ),
      child: i,
    );
  }
}
