import 'package:desafio_modulo_12_af/pages/feed/widgets/story/card_background.dart';
import 'package:desafio_modulo_12_af/pages/feed/widgets/story/identifier_story_type.dart';
import 'package:desafio_modulo_12_af/shared/constantes/constantes_imagens.dart';
import 'package:flutter/material.dart';

import 'package:desafio_modulo_12_af/pages/feed/widgets/story/story_type.dart';

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
              ConstantesImagens.perfil,
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
