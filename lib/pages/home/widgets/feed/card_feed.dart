import 'package:desafio_modulo_12_af/pages/home/widgets/feed/body_card.dart';
import 'package:desafio_modulo_12_af/pages/home/widgets/feed/header_card.dart';
import 'package:desafio_modulo_12_af/shared/constantes/constantes_imagens.dart';
import 'package:flutter/material.dart';

class CardFeed extends StatelessWidget {
  const CardFeed({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0
      ),
      child: Column(
        children: const [
          
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.0
            ),
            child: HeaderCard(),
          ),

          SizedBox(
            height: 10,
          ),

          BodyCard(),

        ],
      ),
    );
  }
}