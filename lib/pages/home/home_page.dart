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
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: ColorFiltered(
          child: Image.asset(
            ConstantesImagens.instagramLogo,
            width: size.width * 0.35,
            height: 70,
          ),
          colorFilter: const ColorFilter.mode(
          Colors.white, 
            BlendMode.srcATop
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(
              Icons.add_box_outlined,
              size: 30,
            ),
          ),

          IconButton(
            onPressed: () {}, 
            icon: const Icon(
              Icons.favorite_border,
              size: 30,
            ),
          ),

          IconButton(
            onPressed: () {}, 
            icon: const Icon(
              Icons.chat_bubble_outline_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}