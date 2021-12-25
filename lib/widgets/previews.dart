import 'package:flutter/material.dart';
import 'package:netflix/models/content_model.dart';

class Previews extends StatelessWidget {
  final String title;
  final List<Content> contentList;

  const Previews({Key? key, required this.title, required this.contentList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            'Previews',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        Container(
          height: 165.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: contentList.length,
              itemBuilder: (BuildContext context, int index) {
                final Content content = contentList[index];

                return GestureDetector(
                  onTap: () => print(content.name),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(content.imageUrl),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: content.color!, width: 4.0)),
                      ),
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [
                                Colors.black87,
                                Colors.black45,
                                Colors.transparent
                              ],
                              stops: [
                                0,
                                0.25,
                                1
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                          shape: BoxShape.circle,
                          border: Border.all(color: content.color!, width: 4.0),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: SizedBox(
                          height: 60,
                          child: Image.asset(content.titleImageUrl!),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
