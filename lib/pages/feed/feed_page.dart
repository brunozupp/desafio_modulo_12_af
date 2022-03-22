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
        itemCount: 3,
        topItens: [
          StoryWidget(),
          StoryWidget(),
        ],
        bottomItens: [
          StoryWidget(),
          StoryWidget(),
          Text("dsdsadasd")
        ],
        itemBuilder: (context,index) {
          print(index);
          return const CardPub();
        },
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