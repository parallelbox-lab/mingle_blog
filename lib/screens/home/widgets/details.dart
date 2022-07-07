import 'package:flutter/material.dart';
class Details extends StatelessWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      appBar: AppBar(
        backgroundColor:  Colors.white,
        elevation: 0,
        leading: Container(
          padding:const EdgeInsets.all(10),
          decoration:const BoxDecoration(
            color:Colors.white70,
          ),
          child: IconButton(
            icon:const Icon(Icons.chevron_left,color: Colors.black,),
            onPressed: (){},
          ),
        ),
        actions: [
          
        ],
      ),
    );
  }
}