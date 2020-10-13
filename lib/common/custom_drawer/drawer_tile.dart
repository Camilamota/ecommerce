import 'package:ecommerce/models/page_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerTile extends StatelessWidget {

  DrawerTile ({this. iconData, this.tittle, this.page});

  final IconData iconData;
  final String tittle;
  final int page;
  @override
  Widget build(BuildContext context) {
    final int curPage = context.watch<PageManager>().page;
    final Color primaryColor = Theme.of(context).primaryColor;
    return InkWell(
      onTap: (){
        context.read<PageManager>().setPage(page);
        debugPrint('toquei');
      },
    child:SizedBox(
      height: 60,
      child:Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
        ),
        Icon(
          iconData,
          size: 32,
          color: curPage == page ? primaryColor : Colors.grey [700],
        ),
        Text(
          tittle,
          style: TextStyle(
            fontSize: 16,
              color: curPage == page ? primaryColor : Colors.grey [700]
          ),

        )
      ],
    )));
  }
}
