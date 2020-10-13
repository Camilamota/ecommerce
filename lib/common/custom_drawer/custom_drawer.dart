import 'package:flutter/material.dart';
import 'package:ecommerce/common/custom_drawer/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerTile(iconData: Icons.home, tittle: 'Início',page: 0,),
          DrawerTile(iconData: Icons.list, tittle: 'Produtos',page: 1,),
          DrawerTile(iconData: Icons.playlist_add_check, tittle: 'Meus Pedidos',page: 2,),
          DrawerTile(iconData: Icons.location_on, tittle: 'Lojas',page: 3,),
        ],
      ),
    );
  }
}
