import 'package:flutter/material.dart';
import 'package:netflix/models/content_model.dart';
import 'package:netflix/constants.dart';

class ContentList extends StatelessWidget {
  final String title;
  final List<Content> contentList;
  bool isOriginal;
  ContentList(
      {Key? key,
      required this.title,
      required this.contentList,
      required this.isOriginal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0, bottom: 10, top: 20),
          child: Text(
            title,
            style: textStyle,
          ),
        ),
        Container(
          height: isOriginal ? 500 : 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: contentList.length,
            itemBuilder: (context, int count) {
              final Content current = contentList[count];
              return GestureDetector(
                onTap: () {
                  print(current.name);
                },
                child: Container(
                  height: isOriginal ? 400 : 200,
                  width: isOriginal ? 250 : 170,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(current.imageUrl), fit: BoxFit.cover),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
