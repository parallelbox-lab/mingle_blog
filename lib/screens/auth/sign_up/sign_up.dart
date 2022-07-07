import 'package:flutter/material.dart';
import 'package:mingle_blog/screens/auth/sign_up/form_content.dart';
import 'package:mingle_blog/widgets/custom_text.dart';
class SignUp extends StatelessWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(child:Padding(
          padding: const EdgeInsets.symmetric(vertical:25, horizontal:15.0),
          child: Column(children:const [
           CustomText(text: "Mingle \n Create Account", size: 26,color:Colors.black),
            SizedBox(height: 15,),
           FormContent(),
          ],),
        )),
      ),
    );
  }
}