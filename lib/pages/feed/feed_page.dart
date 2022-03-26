import 'dart:developer';

import 'package:desafio_modulo_12_af/pages/feed/widgets/app_bar_widget.dart';
import 'package:desafio_modulo_12_af/pages/feed/widgets/pub/card_pub.dart';
import 'package:desafio_modulo_12_af/pages/feed/widgets/story/story_widget.dart';
import 'package:desafio_modulo_12_af/shared/widgets/list_view_special.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({ Key? key }) : super(key: key);

  final backgroundColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBarWidget(
        background: backgroundColor, 
        widthLogo: size.width * 0.35, 
        heightLogo: 70
      ),
      body: ListViewSpecial(
        itemCount: 3,
        itemBuilder: (context,index) {
          log(index.toString());
          return CardPub(
            index: index,
          );
        },
        starterItems: const [
          StoryWidget(),
        ],
        finalItems: const [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20.0
            ),
            child: Text(
              "Você viu todas as publicações",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }
}