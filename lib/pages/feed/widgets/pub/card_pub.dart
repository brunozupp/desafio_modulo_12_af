import 'package:flutter/material.dart';

import 'package:desafio_modulo_12_af/pages/feed/widgets/pub/body_card.dart';
import 'package:desafio_modulo_12_af/pages/feed/widgets/pub/header_card.dart';

class CardPub extends StatelessWidget {

  final int index;

  const CardPub({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0
      ),
      child: Column(
        children: [
          
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.0
            ),
            child: HeaderCard(),
          ),

          const SizedBox(
            height: 10,
          ),

          BodyCard(
            index: index,
          ),

        ],
      ),
    );
  }
}
