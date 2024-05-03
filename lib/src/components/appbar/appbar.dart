import 'package:flutter/material.dart';

class AppBarComponent extends StatefulWidget {
  const AppBarComponent({super.key});

  @override
  State<AppBarComponent> createState() => _AppBarComponentState();
}

class _AppBarComponentState extends State<AppBarComponent> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: SizedBox(
        width: 200,
        child: Image.asset(
          'assets/acadia_escrito.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
