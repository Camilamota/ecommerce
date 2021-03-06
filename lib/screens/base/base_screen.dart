import 'package:ecommerce/common/custom_drawer/custom_drawer.dart';
import 'package:ecommerce/models/page_manager.dart';
import 'package:ecommerce/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class BaseScreen extends StatelessWidget {

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(pageController),
    child: PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        LoginScreen(),
        Scaffold(
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: const Text('Home1'),
          ),
        ),
        Scaffold(
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: const Text('Home2'),
          ),
        ),
        Scaffold(
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: const Text('Home3'),
          ),
        ),
      ],
    ));
  }
}