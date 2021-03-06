import 'package:flutter/material.dart';
import 'package:mingle_blog/ViewModel/blog_view_model.dart';
import 'package:mingle_blog/screens/home/widgets/details.dart';

import 'components/search_bar.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlogViewModel blog = BlogViewModel();
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const Padding(padding: EdgeInsets.all(15.0), child: SearchBar()),
            postList(context, blog)
          ],
        ),
      ),
    );
  }

  postList(BuildContext context, BlogViewModel blog) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: blog.blogList.length,
          itemBuilder: (BuildContext context, i) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => Details(blog: blog.blogList[i]),
                  ),
                ),
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
                        height: 90.0,
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
                            const SizedBox(height: 10.0),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                blog.blogList[i].postHeading!,
                                style: const TextStyle(
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
                              child: Text(
                                "By ${blog.blogList[i].postedBy}",
                                style:const TextStyle(
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
