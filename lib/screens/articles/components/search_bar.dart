import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Colors.blueGrey[50],
        borderRadius:const BorderRadius.all(
          Radius.circular(5.0)
        )
      ),
      child: TextField(
        controller: _searchController,
        style:TextStyle(
          fontSize: 15.0,
          color:Colors.blueGrey[300],
        ),
        decoration:InputDecoration(
          contentPadding:const EdgeInsets.all(10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0),
          borderSide:const BorderSide(color: Colors.white)
          ),
          enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(5.0),
          borderSide:const BorderSide(color: Colors.white)
          ),
          hintText: "E.g News Headline, relationship talk",
          prefixIcon: Icon(
            Icons.book_online,
            color: Colors.blueGrey[300],
          ),
          suffixIcon:_searchController.text.isEmpty ? const Text('') : IconButton(onPressed:() => _searchController.clear(), icon:const Icon(Icons.clear),     
          ),
         
      ),
    ));
  }
}
