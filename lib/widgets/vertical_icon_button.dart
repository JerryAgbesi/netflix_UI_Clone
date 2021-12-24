import 'package:flutter/material.dart';
import 'package:netflix/main.dart';

class VerticalIconButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function tap;

  const VerticalIconButton(
      {Key? key, required this.icon, required this.title, required this.tap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
