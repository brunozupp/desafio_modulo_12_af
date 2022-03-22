import 'package:desafio_modulo_12_af/pages/feed/widgets/story/card_story.dart';
import 'package:desafio_modulo_12_af/pages/feed/widgets/story/story_type.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CardStory(
                storyType: _teste(index),
              ),

              const SizedBox(
                height: 5,
              ),

              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 89
                ),
                child: const Text(
                  "Bruno Noveli",
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  StoryType _teste(int index) {

    if(index == 0) {
      return StoryType.photo;
    }

    if(index == 1) {
      return StoryType.video;
    }

    if(index == 2) {
      return StoryType.live;
    }

    if(index == 3) {
      return StoryType.specialEvent;
    }

    return StoryType.watched;
  }
}