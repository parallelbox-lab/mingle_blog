import 'package:flutter/material.dart';
import 'package:mingle_blog/screens/home/widgets/details.dart';
import 'package:mingle_blog/widgets/custom_text.dart';
import 'package:mingle_blog/widgets/icon_badge.dart';
import 'package:mingle_blog/widgets/title_holder.dart';
import 'package:mingle_blog/widgets/icon_badge.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
            const  SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: "Welcome, Owoeye",
                          size: 20.sp,
                          color: Colors.black),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomText(
                        text: "Explore Today's",
                        size: 25.sp,
                        color: Colors.black,
                        weight: FontWeight.bold,
                      )
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                      ),
                      child:   IconButton(
                        icon: IconBadge(
                          icon: Icons.notifications_none,
                          color: Colors.black,
                          size: 40,
                ),
                onPressed: () {},
              ),)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              horizontalList(context),
              const SizedBox(
                height: 10,
              ),
              TitleHolder(
                titleName: "Latest News",
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              latestNews(context)
            ],
          ),
        ),
      ),
    );
  }

  horizontalList(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext context, i) {
            return Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: SizedBox(
                  height: 250,
                  width: 140.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset("assets/images/sit.jpg",
                              height: 180.0, width: 160.0, fit: BoxFit.cover)),
                      const SizedBox(
                        height: 9.0,
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: CustomText(
                              text: "How to lead a Godly marriage as a man",
                              size: 12.0.sp,
                              weight: FontWeight.bold))
                    ],
                  )),
            );
          }),
    );
  }

  latestNews(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics:const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (BuildContext context, i) {
          return Padding(
           padding: const EdgeInsets.only(bottom: 16.0),
            child: InkWell(
              onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (ctx)=> const Details())),
              child: SizedBox(
                height: 70.0,              
                child: Row(
                  children: [
                     Expanded(
                       child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                          "assets/images/sit.jpg",
                          height: 100.0,
                          width: 90.0,
                          fit: BoxFit.cover,
                                ),
                              ),),                
                 const SizedBox(width: 15.0),
                    SizedBox(
                      height: 80.0,
                      width: MediaQuery.of(context).size.width - 130.0,
                      child: ListView(
                        primary: false,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: <Widget>[
                      
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.new_label,
                                size: 13.0,
                                color: Colors.blueGrey[300],
                              ),
                              const SizedBox(width: 3.0),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Marraige Counselling",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0,
                                    color: Colors.blueGrey[300],
                                  ),
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                           Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Men of hope",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14.0,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "By Bro Ayoade",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                              maxLines: 1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
