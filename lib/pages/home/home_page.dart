import 'package:desafio_modulo_12_af/pages/home/widgets/app_bar_widget.dart';
import 'package:desafio_modulo_12_af/pages/home/widgets/feed/feed_widget.dart';
import 'package:desafio_modulo_12_af/pages/home/widgets/story/story_widget.dart';
import 'package:desafio_modulo_12_af/shared/constantes/constantes_imagens.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            StoryWidget(),

            FeedWidget(),
          ],
        ),
      ),
    );
  }
}