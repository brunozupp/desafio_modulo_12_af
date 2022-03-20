import 'package:desafio_modulo_12_af/pages/home/widgets/story/card_background.dart';
import 'package:desafio_modulo_12_af/pages/home/widgets/story/identifier_story_type.dart';
import 'package:flutter/material.dart';

import 'package:desafio_modulo_12_af/pages/home/widgets/story/story_type.dart';

class CardStory extends StatelessWidget {

  final StoryType storyType;

  const CardStory({
    Key? key,
    required this.storyType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CardBackground(
            storyType: storyType,
          ),
          const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://scontent-gru2-2.xx.fbcdn.net/v/t1.6435-9/201289668_2050074035154810_5316967695378847421_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHb7KvcRpLpIqjk9phxxaY4nZiM4e_0_1idmIzh7_T_WLlSd9ttADt7GWXmMa8cz5i7uNXFC4jQwubfx_309aKV&_nc_ohc=fuRH4Mm253wAX95UDVl&_nc_ht=scontent-gru2-2.xx&oh=00_AT-ISG-gmm2YAMLCJentC58HXdgspVy9Y7GmSVhHA2E2IQ&oe=625C4974",
            ),
            radius: 40,
          ),
          IdentifierStoryType(
            storyType: storyType,
          ),
        ],
      ),
    );
  }
}
