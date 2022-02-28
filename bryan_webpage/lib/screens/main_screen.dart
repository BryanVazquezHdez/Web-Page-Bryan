import 'package:bryan_webpage/constants.dart';
import 'package:flutter/material.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(children: [
            Expanded(
              flex: 2,
              child: SideMenu(),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                  children: [...children],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
