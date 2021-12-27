import 'package:netflix/models/models.dart';
import 'package:netflix/assets.dart';
import 'package:flutter/material.dart';

final Content sintelContent = Content(
  name: 'Sintel',
  imageUrl: Assets.sintel,
  titleImageUrl: Assets.sintelTitle,
  description:
      'A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\ndragon, Sintel decides to embark on a dangerous quest to find\nher lost friend Scales.',
);

final List<Content> previews = [
  Content(
      name: 'Umbrella Academy',
      imageUrl: Assets.umbrella,
      color: Colors.blueAccent,
      titleImageUrl: Assets.umbrellaTitle),
  Content(
      name: 'Cursed',
      imageUrl: Assets.cursed,
      color: Colors.red,
      titleImageUrl: Assets.cursedTitle),
  Content(
      name: 'Avatar The Last Airbender',
      imageUrl: Assets.atlab,
      color: Colors.orange,
      titleImageUrl: Assets.atlabTitle),
  Content(
      name: 'The Crown',
      imageUrl: Assets.crown,
      color: Colors.brown,
      titleImageUrl: Assets.crownTitle),
  Content(
      name: 'Black Mirror',
      imageUrl: Assets.blackMirror,
      color: Colors.lightBlue,
      titleImageUrl: Assets.blackMirrorTitle),
  Content(
      name: 'Carole and Tuesday',
      imageUrl: Assets.caroleandTuesday,
      color: Colors.pinkAccent,
      titleImageUrl: Assets.caroleandTuesdayTitle),
];

final List<Content> myList = [
  Content(name: 'Narcos', imageUrl: Assets.narcos),
  Content(name: 'How to sell drugs online (fast)', imageUrl: Assets.htsdof),
  Content(name: 'Blood of zeus', imageUrl: Assets.bloodofZeus),
  Content(name: 'Avatar The Last Airbender', imageUrl: Assets.atlab),
  Content(name: 'dogs', imageUrl: Assets.dogs),
];

final List<Content> originals = [
  Content(name: 'The Witcher', imageUrl: Assets.witcher),
  Content(name: 'Stranger things', imageUrl: Assets.strangerThings),
  Content(name: 'Explained', imageUrl: Assets.queensGambit),
  Content(name: 'kakegurui', imageUrl: Assets.kakegurui),
];

final List<Content> trending = [
  Content(name: 'Bridgerton', imageUrl: Assets.bridgerton),
  Content(name: 'Breaking Bad', imageUrl: Assets.breakingBad),
  Content(name: 'teotfw', imageUrl: Assets.teotfw),
  Content(name: 'Tiger King', imageUrl: Assets.tigerKing),
  Content(name: '13 reasons why', imageUrl: Assets.thirteenReasonsWhy),
];
