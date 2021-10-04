import 'package:flutter/material.dart';
import 'body.dart';
import 'package:plant_app/constants.dart';
import 'bottombar.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body() ,
      bottomNavigationBar: Bottombar(),

    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.list),
        onPressed: (){},
      ),
    );
  }
}


