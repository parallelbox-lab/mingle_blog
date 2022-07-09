import 'package:flutter/material.dart';
import 'package:mingle_blog/models/blog_model.dart';

class BlogViewModel extends ChangeNotifier {
  BlogModel blog = BlogModel();
  final List<BlogModel> _blogList = [
     BlogModel(
      postDescription: "Is he a Christian who has overall excellent character along with a consistent desire to love and honor God in all things? The righteous who walks in his integrity—blessed are his children after him! (Prov. 20:7) I appeal to you therefore, brothers, by the mercies of God, to present your bodies as a living sacrifice, holy and acceptable to God, which is your spiritual worship. (Rom. 12:1)Be watchful, stand firm in the faith, actlike men, be strong. (1 Cor. 16:13) But as for you, O man of God, flee these things. Pursue righteousness, godliness, faith, love, steadfastness, gentleness. (1 Tim. 6:11)",
      postHeading: "10 Questions a Christian Woman Should Ask Herself Before Saying Yes to a Marriage Proposal",
      postName: "Deciding whether to marry a man is one of the biggest decisions a woman will ever make. Here are ten questions, along with corresponding Bible passages, a Christian woman should ask herself before saying yes (click here for the corresponding article for Christian men; all Scripture quotations from the English Standard Version):",
      postedBy: "Bro Ayoade"
    )
  ];
  List<BlogModel> get blogList => _blogList;
}
