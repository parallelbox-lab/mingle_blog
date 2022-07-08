import 'package:flutter/material.dart';
import 'package:mingle_blog/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';
class Details extends StatelessWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: Container(
            margin:const EdgeInsets.only(top:15),
            child: AppBar(
            backgroundColor:  Colors.white,
            elevation: 0,
            leading: Container(
              padding:const EdgeInsets.all(10),
              decoration:const BoxDecoration(
                color:Colors.white70,
              ),
              child: IconButton(
                icon:const Icon(Icons.chevron_left,color: Colors.black,size: 40,),
                onPressed: ()=> Navigator.pop(context),
              ),
            ),
            
        ),
          ),
      ),
      body: SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    // borderRadius:  BorderRadius.only(
                    //   topLeft: Radius.circular(20.0),
                    //   topRight: Radius.circular(20.0),
                    // ),
                    color: Colors.blue,
                    image:  DecorationImage(
                            image: AssetImage(
                                'assets/images/Feature Image.png'),
                            fit: BoxFit.cover)
                        
                  ),
                  ), 
         Padding(
           padding: const EdgeInsets.all(25.0),
           child: CustomText(text: "Posttitle Here",size: 15.sp,weight:FontWeight.w700, color:Colors.black),
         ),
         Padding(
           padding: const EdgeInsets.all(25.0),
           child: CustomText(text: "The Model in the MVVM presents real-time data that will be used in application development. The Model only reflects the actual data and not the characteristics or any feature related to the application.It means you can’t manipulate the way the data will be represented or formatted. Each item in the dataset will be presenting its own model when the data is fetched. The main Model is kept away from the logic part for neat code but sometimes, it includes the validation logic as well.",size: 13.sp,weight:FontWeight.w500, color:Colors.black),
         ),
            ],
          ),
        )
    );
  }
}