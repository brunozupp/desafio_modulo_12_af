import 'package:flutter/material.dart';

import 'package:desafio_modulo_12_af/pages/feed/widgets/story/story_type.dart';

class CardBackground extends StatelessWidget {

  final StoryType storyType;

  const CardBackground({
    Key? key,
    required this.storyType,
  }) : super(key: key);

  final _size = 86.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _size,
      width: _size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: _getLinearColorByStoryType(storyType),
        ),
      ),
    );
  }
}

List<Color> _getLinearColorByStoryType(storyType) {
  switch(storyType) {
      
    case StoryType.photo:
    case StoryType.video:
      return [
        Colors.pink[300]!,
        Colors.orange.shade200
      ];

    case StoryType.live:
      return [
        Colors.purple.shade700,
        Colors.pink[300]!
      ];

    case StoryType.specialEvent:
      return [
        Colors.purple,
        Colors.blue.shade400
      ];

    case StoryType.userWithoutStories:
      return [
        Colors.white,
        Colors.white
      ];

    default:
      return [
        Colors.grey,
        Colors.grey,
      ];
  }
}