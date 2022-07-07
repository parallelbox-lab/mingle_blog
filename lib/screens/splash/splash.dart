import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mingle_blog/screens/auth/sign_up/sign_up.dart';
import 'package:mingle_blog/widgets/custom_text.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    void _navigationPage() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // email = prefs.getString('email');
  
    // if (email == null) {
    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => const Onboarding()));
    // } else {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => const SignUp()));
    // }
  }
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => _navigationPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SizedBox(
            // height: 30.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:const EdgeInsets.all(25),
                  decoration:const BoxDecoration(
                    color:Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child:Column(
                    children: const [
                      CustomText(text: "Mingle",color:Colors.white, size: 30,weight: FontWeight.w800,),
                      SizedBox(height:10),
                      CustomText(text: "Building the Right Godly Relationship",color:Colors.white,size:15)

                    ],
                  )),
                // CustomText(text: "Building Scalable Softwares for all",size: 14.sp,weight: FontWeight.w400,),
    
              ],
            ),
          ),
        ),
      ),
    );
  }
}