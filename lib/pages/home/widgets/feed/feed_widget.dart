import 'package:desafio_modulo_12_af/pages/home/widgets/feed/card_feed.dart';
import 'package:flutter/material.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context,index) {
        return CardFeed();
      }
    );
  }
}