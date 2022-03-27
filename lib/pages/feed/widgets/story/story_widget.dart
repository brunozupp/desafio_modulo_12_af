import 'package:desafio_modulo_12_af/pages/feed/widgets/story/card_story.dart';
import 'package:desafio_modulo_12_af/pages/feed/widgets/story/story_type.dart';
import 'package:desafio_modulo_12_af/shared/widgets/list_view_special.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: SizedBox(
        height: 105,
        child: ListViewSpecial(
          scrollDirection: Axis.horizontal,
          starterItems: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                CardStory(
                  storyType: StoryType.userWithoutStories,
                ),
              ],
            ),
          ],
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                  child: Text(
                    "Bruno Noveli",
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            );
          },
        ),
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