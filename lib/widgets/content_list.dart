import 'package:flutter/material.dart';
import 'package:netflix/models/content_model.dart';
import 'package:netflix/constants.dart';

class ContentList extends StatelessWidget {
  final String title;
  final List<Content> contentList;
  bool? isOriginal = false;
  ContentList(
      {Key? key,
      required this.title,
      required this.contentList,
      this.isOriginal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0, bottom: 20, top: 20),
          child: Text(
            title,
            style: textStyle,
          ),
        ),
      ],
    );
  }
}
