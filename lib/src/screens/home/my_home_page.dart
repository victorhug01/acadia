import 'package:acadia/src/screens/profile_user/profile_user.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            leading: SizedBox(
              child: Image.asset(
                "assets/acadia_escrito.png",
                fit: BoxFit.contain,
              ),
            ),
            leadingWidth: 200,
            toolbarHeight: 80.0,
            centerTitle: true,
            title: const SizedBox(
              width: 500.0,
              child: TabBar(
                dividerColor: Colors.transparent,
                labelStyle: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelColor: Colors.black45,
                tabs: [
                  Text('Perfil'),
                  Text('Finanças'),
                  Text('Cadastro'),
                  Text('Chat'),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              const ProfileUserPage(),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.yellow,
              ),
            ],
          )),
    );
  }
}
