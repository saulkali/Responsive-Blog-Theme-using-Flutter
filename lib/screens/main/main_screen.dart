import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/controllers/MenuController.dart' as myMenuController;
import 'package:news/screens/home/home_screen.dart';

import '../../constants.dart';
import 'components/header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final myMenuController.MenuController _controller = Get.put(myMenuController.MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(child: HomeScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
