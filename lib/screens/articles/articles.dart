import 'package:flutter/material.dart';

import 'components/search_bar.dart';

class Articles extends StatelessWidget {
  const Articles({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
            const SearchBar()
             
            ],
          ),
        )
      ),
    );
  }
}