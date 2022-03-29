import 'package:flutter/material.dart';

import 'package:desafio_modulo_12_af/shared/constantes/constantes_imagens.dart';

class AppBarWidget extends AppBar {

  final double widthLogo;
  final double heightLogo;
  final VoidCallback mudarTema;
  
  AppBarWidget({
    Key? key,
    required this.widthLogo,
    required this.heightLogo,
    required this.mudarTema,
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
        onPressed: mudarTema, 
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
