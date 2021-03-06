import 'package:flutter/material.dart';

import 'package:desafio_modulo_12_af/shared/constantes/constantes_imagens.dart';

class BodyCard extends StatelessWidget {

  final int index;

  const BodyCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
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
                
                  const SizedBox(
                    height: 10,
                  ),
                  
                  Text(
                    "1.463 curtidas",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Text.rich(
                    TextSpan(
                      text: "Bruno Noveli ",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: "?? com grande prazer que anuncio o novo app que lan??arei na pr??xima semana com o intuito de proteger o meio ambiente e todos os animais que nele vive",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ]
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  
                  Text(
                    "Ver todos os 73 coment??rios",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),

                ],
              ),
            ),
          ],
        ),
      
        Container(
          color: Colors.black.withOpacity(0.6),
          height: 400,
          child: Center(
            child: Text(
              index.toString(),
              style: const TextStyle(
                fontSize: 100,
                color: Colors.white
              ),
            ),
          ),
        ),
      ],
    );
  }
}
