import 'package:desafio_modulo_12_af/shared/constantes/constantes_imagens.dart';
import 'package:flutter/material.dart';

class BodyCard extends StatelessWidget {
  const BodyCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Image.network(
          ConstantesImagens.feed1,
          height: 400,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),

        Padding(
          padding: const EdgeInsets.only(
            right: 10.0,
            left: 10.0,
            top: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Row(
                children: const [
                  Icon(
                    Icons.favorite_border_rounded,
                    color: Colors.white,
                    size: 30,
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  Icon(
                    Icons.chat_bubble_outline_rounded,
                    color: Colors.white,
                    size: 30,
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  Icon(
                    Icons.send_rounded,
                    color: Colors.white,
                    size: 30,
                  ),

                  Spacer(),

                  Icon(
                    Icons.save_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            
              SizedBox(
                height: 10,
              ),
              
              Text(
                "1.463 curtidas",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),

              Text(
                "Bruno Noveli "
              )
            ],
          ),
        ),
      ],
    );
  }
}