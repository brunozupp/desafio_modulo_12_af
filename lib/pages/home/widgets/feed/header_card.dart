import 'package:desafio_modulo_12_af/shared/constantes/constantes_imagens.dart';
import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CircleAvatar(
          backgroundImage: NetworkImage(
            ConstantesImagens.perfil,
          ),
          radius: 20,
        ),

        SizedBox(
          width: 10,
        ),

        Expanded(
          child: Text(
            "Bruno Noveli",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),

        Icon(
          Icons.add,
          color: Colors.white,
        )
      ],
    );
  }
}