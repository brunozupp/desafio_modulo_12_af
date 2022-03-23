import 'package:flutter/material.dart';

class ListViewSpecial extends StatelessWidget {

  final List<Widget>? topItens;
  final List<Widget>? bottomItens;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  final Axis scrollDirection;

  final int _topItensLength;
  final int _bottomItensLength;
  final int _totalItens;

  const ListViewSpecial({
    Key? key,
    this.topItens,
    this.bottomItens,
    required this.itemCount,
    required this.itemBuilder,
    this.scrollDirection = Axis.vertical,
  }) :
  _topItensLength = topItens?.length ?? 0,
  _bottomItensLength = bottomItens?.length ?? 0,
  _totalItens = (topItens?.length ?? 0) + (bottomItens?.length ?? 0) + itemCount,
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: scrollDirection,
      itemCount: _totalItens,
      itemBuilder: (context, index) {

        if(_topItensLength > 0 && index < topItens!.length) {
          return topItens![index];
        }

        if(_bottomItensLength > 0 && (_totalItens - _bottomItensLength) <= (index)) {
          var i = _totalItens - (index + 1);

          // Invertendo o valor do i para pegar as posições na ordem crescente
          i = (_bottomItensLength - 1) - i;
          return bottomItens![(i)];
        }

        return itemBuilder(context,index);
      },
    );
  }
}
