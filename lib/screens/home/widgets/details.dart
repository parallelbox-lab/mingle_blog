import 'package:flutter/material.dart';
import 'package:mingle_blog/widgets/icon_badge.dart';
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
            icon:const Icon(Icons.chevron_left,color: Colors.black,size: 40,),
            onPressed: (){},
          ),
        ),
        actions: [
           IconButton(
            icon: IconBadge(
              icon: Icons.notifications_none,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () {},
          ),
         const SizedBox(width:5)
        ],
      ),
    );
  }
}