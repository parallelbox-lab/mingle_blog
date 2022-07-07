import 'package:flutter/material.dart';
import 'package:mingle_blog/widgets/custom_text.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Padding(
            padding: const EdgeInsets.symmetric(vertical:35.0,horizontal: 25),
            child: ListView(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CustomText(
                            text: "Welcome, Owoeye",
                            size: 20,
                            color: Colors.black),
                        SizedBox(height: 10,),
                        CustomText(
                          text: "Explore Today's",
                          size: 25,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        )
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                        ),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: const DecorationImage(
                                  image: AssetImage(
                                'assets/images/user_image.png',
                              ))),
                        ))
                  ],
                ),
              const  SizedBox(height: 30,),
                horizontalList(context),
              ],
            ),
          ),
        ),
    );
  }

  horizontalList(BuildContext context) {
    return Container(
     padding: EdgeInsets.only(top: 10.0),
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:5,
        itemBuilder: (BuildContext context, i) {
        return Padding(
          padding: const EdgeInsets.only(right:15.0),
          child: Container(
            height:250,
            width:140.0,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              ClipRect(
                child: Image.asset(
                  "assets/images/sit.jpg",
                  height:178.0,
                  width:140.0,
                  fit:BoxFit.cover
                )),
               const SizedBox(height: 7.0,),
               Container(alignment: Alignment.centerLeft,
               child:const CustomText(text: "How to lead a Godly marriage as a man",
               maxLines: 2,
               size:15.0,weight:FontWeight.bold)
               )
            ],)
          ),
        );
      }),
    );
  }
}
