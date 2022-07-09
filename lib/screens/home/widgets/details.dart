import 'package:flutter/material.dart';
import 'package:mingle_blog/models/blog_model.dart';
import 'package:mingle_blog/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

class Details extends StatelessWidget {
  const Details({Key? key,this.blog}) : super(key: key);
  final BlogModel? blog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: Container(
            margin: const EdgeInsets.only(top: 15),
            child: AppBar(
              elevation: 0,
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white70,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.chevron_left,
                    color: Colors.black,
                    size: 40,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: CustomText(
                  text:
                      blog!.postHeading ?? '',
                  size: 17.sp,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 184.0,
                width: double.infinity,
                decoration: const BoxDecoration(
                    // borderRadius:  BorderRadius.only(
                    //   topLeft: Radius.circular(20.0),
                    //   topRight: Radius.circular(20.0),
                    // ),
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage('assets/images/Feature Image.png'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: CustomText(
                    text:blog!.postName ?? '',
                    size: 15.sp,
                    weight: FontWeight.w700,
                    color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: CustomText(
                    text:
                        blog!.postDescription,
                    size: 13.sp,
                    weight: FontWeight.w500,
                    color: Colors.black),
              ),
             const SizedBox(height: 20,)
            ],
          ),
        ));
  }
}
