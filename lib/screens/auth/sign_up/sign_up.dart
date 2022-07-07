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
          padding: const EdgeInsets.symmetric(vertical:50, horizontal:25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const [
           CustomText(text: "Mingle \nCreate Account", size: 39,color:Colors.black,weight:FontWeight.bold),
            SizedBox(height: 15,),
           FormContent(),
          ],),
        )),
      ),
    );
  }
}