import 'package:flutter/material.dart';
class CreateBlog extends StatelessWidget {
  const CreateBlog({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Create Blog Post"),),
    );
  }
}