import 'package:flutter/material.dart';
import 'package:mingle_blog/widgets/custom_text.dart';
import 'package:mingle_blog/widgets/icon_badge.dart';
import 'package:sizer/sizer.dart';
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
      body: SingleChildScrollView(
        child:  Column(
            children: [
          Padding(
          padding: const EdgeInsets.all(25.0),
          child: CustomText(text: "Here’s What 15 Relationship Experts Can Teach Us About Love",size: 17.sp,),
           ),
           const SizedBox(height: 10,),            
            Container(
                  height: 184.0,
                  width: double.infinity,
                  decoration:const BoxDecoration(
                    borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    color: Colors.blue,
                    image:  DecorationImage(
                            image: AssetImage(
                                'assets/images/Feature Image.png'),
                            fit: BoxFit.cover)
                        
                  ),
                  ), 


            ],
          ),
        )
    );
  }
}