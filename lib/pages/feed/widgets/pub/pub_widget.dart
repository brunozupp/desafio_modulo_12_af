import 'package:desafio_modulo_12_af/pages/feed/widgets/pub/card_pub.dart';
import 'package:flutter/material.dart';

class PubWidget extends StatelessWidget {
  const PubWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context,index) {
        return const CardPub();
      }
    );
  }
}