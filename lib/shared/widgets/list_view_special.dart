import 'package:flutter/material.dart';

class ListViewSpecial extends StatelessWidget {

  final List<Widget>? starterItems;
  final List<Widget>? finalItems;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  final Axis scrollDirection;

  final int _starterItemsLength;
  final int _finalItemsLength;
  final int _totalItens;

  const ListViewSpecial({
    Key? key,
    this.starterItems,
    this.finalItems,
    required this.itemCount,
    required this.itemBuilder,
    this.scrollDirection = Axis.vertical,
  }) :
  _starterItemsLength = starterItems?.length ?? 0,
  _finalItemsLength = finalItems?.length ?? 0,
  _totalItens = (starterItems?.length ?? 0) + (finalItems?.length ?? 0) + itemCount,
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: scrollDirection,
      itemCount: _totalItens,
      itemBuilder: (context, index) {

        if(_starterItemsLength > 0 && index < starterItems!.length) {
          return starterItems![index];
        }

        if(_finalItemsLength > 0 && (_totalItens - _finalItemsLength) <= (index)) {
          var i = _totalItens - (index + 1);

          // Invertendo o valor do i para pegar as posições na ordem crescente
          i = (_finalItemsLength - 1) - i;
          return finalItems![(i)];
        }
        
        return itemBuilder(context,(index - _starterItemsLength)); // MUDAR AQUI
      },
    );
  }
}
