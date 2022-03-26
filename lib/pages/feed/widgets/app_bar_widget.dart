import 'package:desafio_modulo_12_af/shared/constantes/constantes_imagens.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends AppBar {

  final double widthLogo;
  final double heightLogo;
  
  AppBarWidget({Key? key, 
    required this.widthLogo,
    required this.heightLogo,
  }) : super(
    key: key, 
    elevation: 0,
    title: ColorFiltered(
      child: Image.asset(
        ConstantesImagens.instagramLogo,
        width: widthLogo,
        height: heightLogo,
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
  );


}
