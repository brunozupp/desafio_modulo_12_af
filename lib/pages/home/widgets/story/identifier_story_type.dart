import 'package:flutter/material.dart';

import 'package:desafio_modulo_12_af/pages/home/widgets/story/story_type.dart';

class IdentifierStoryType extends StatelessWidget {

  final StoryType storyType;

  const IdentifierStoryType({
    Key? key,
    required this.storyType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    switch(storyType) {
      
      case StoryType.live:
        return const _IdentifierLive();

      case StoryType.specialEvent:
        return const _IdentifierSpecialEvent();
      
      default:
        return Container();
    }
  }
}

class _IdentifierSpecialEvent extends StatelessWidget {
  const _IdentifierSpecialEvent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -1,
      right: 0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ),
          ),
          Card(
            elevation: 4,
            color: Colors.purple.shade700,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.favorite_border,
                size: 14,
                color: Colors.white,
              ),
            ),
          ),
        ],
      )
    );
  }
}

class _IdentifierLive extends StatelessWidget {
  const _IdentifierLive({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -4,
      child: Card(
        elevation: 4,
        color: Colors.pink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            "AO VIVO",
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      )
    );
  }
}