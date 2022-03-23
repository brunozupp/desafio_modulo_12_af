import 'package:desafio_modulo_12_af/pages/feed/widgets/app_bar_widget.dart';
import 'package:desafio_modulo_12_af/pages/feed/widgets/pub/card_pub.dart';
import 'package:desafio_modulo_12_af/pages/feed/widgets/pub/pub_widget.dart';
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
        itemCount: 10,
        itemBuilder: (context,index) {
          print(index);
          return const CardPub();
        },
        topItens: const [
          // Text(
          //   "AQUI 1",
          //   style: TextStyle(
          //     color: Colors.white,
          //   ),
          // ),
          StoryWidget(),
          // Text(
          //   "AQUI 2",
          //   style: TextStyle(
          //     color: Colors.white,
          //   ),
          // ),
        ],
        bottomItens: const [
          StoryWidget(),
          Text(
            "AQUI 3",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          StoryWidget(),
          Text(
            "AQUI 4",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),

      // body: SingleChildScrollView(
      //   child: Column(
      //     children: const [
      //       StoryWidget(),

      //       PubWidget(),
      //     ],
      //   ),
      // ),
    );
  }
}