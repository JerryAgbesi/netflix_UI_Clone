import 'package:flutter/material.dart';
import 'package:netflix/models/content_model.dart';
import 'package:netflix/widgets/widgets.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;
  const ContentHeader({Key? key, required this.featuredContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(featuredContent.imageUrl),
            ),
          ),
        ),
        Container(
          height: 500,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 110,
          child: SizedBox(
            width: 250,
            child: Image.asset(
              featuredContent.titleImageUrl!,
            ),
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(
                icon: Icons.add,
                title: 'List',
                tap: () => print('list'),
              ),
              _PlayButton(),
              VerticalIconButton(
                icon: Icons.info,
                title: 'Info',
                tap: () => print('list'),
              )
            ],
          ),
        )
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  const _PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      onPressed: () {
        print('play');
      },
      child: Row(
        children: const [
          Icon(
            Icons.play_arrow,
            size: 30,
          ),
          Text(
            'Play',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
