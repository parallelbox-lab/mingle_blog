import 'package:flutter/material.dart';
class Details extends StatelessWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding:const EdgeInsets.all(10),
          decoration:const BoxDecoration(
            color:Colors.white54,
          ),
          child: IconButton(
            icon:const Icon(Icons.chevron_left),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}