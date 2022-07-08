import 'package:flutter/material.dart';
import 'package:mingle_blog/screens/home/widgets/details.dart';

import 'components/search_bar.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
          children: [ 
       const Padding(
        padding:EdgeInsets.all(15.0),
        child:SearchBar()),
        postList(context)],
        ),
      ),
    );
  }

  postList(BuildContext context) {
    return Padding(
        padding:const EdgeInsets.all(15.0),
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 6,
          itemBuilder: (BuildContext context, i) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const Details())),
                child: SizedBox(
                  // height: 70.0,
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
                        ),
                      ),
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
                                "Wisecrypto is a Premium and High-Quality Cryptocurrency Market App UI Kit with 20+ high-quality screens and easy to use in Figma.",
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
          }),
    );
  }
}
