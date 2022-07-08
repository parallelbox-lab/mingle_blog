import 'package:flutter/material.dart';

class Articles extends StatelessWidget {
  const Articles({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:ListView(
          children: [
            Row(children: [
              IconButton(onPressed: 
              (){}, 
              icon:const Icon(Icons.arrow_back_ios))
            ],)
          ],
        )
      ),
    );
  }
}