import 'package:flutter/material.dart';
import 'package:mingle_blog/widgets/custom_text.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: const [
                        CustomText(
                            text: "Welcome, Owoeye",
                            size: 20,
                            color: Colors.black),
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
                                'assets/user_image.png',
                              ))),
                        ))
                  ],
                ),
                horizontalList(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  horizontalList(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount:5,
        itemBuilder: (BuildContext context, i) {
        return Container(
          height:250,
          width:140.0,
          child:Column(children: [
            ClipRect(
              child: Image.asset(
                "",
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
        );
      }),
    );
  }
}
