import 'package:flutter/material.dart';
import '../constants.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0,-10),
            color: KprimaryColor.withOpacity(.5),
            blurRadius: 25,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home,
              color: Colors.green,)),
            IconButton(onPressed: (){

            }, icon: Icon(Icons.local_florist_rounded,
              color: Colors.greenAccent,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.people,
              color: Colors.greenAccent,)),

          ],
        ),
      ),
    );
  }
}