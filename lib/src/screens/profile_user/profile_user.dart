import 'package:acadia/src/theme/theme.dart';
import 'package:flutter/material.dart';

class ProfileUserPage extends StatefulWidget {
  const ProfileUserPage({super.key});

  @override
  State<ProfileUserPage> createState() => _ProfileUserPageState();
}

class _ProfileUserPageState extends State<ProfileUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset('assets/wave.png'),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 37.0, vertical: 40.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 450,
                height: MediaQuery.sizeOf(context).width / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                  border: Border.all(
                    width: 3,
                    color: ColorSchemeManagerClass.colorSecondary,
                  ),
                ),
                child: Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0),
                      border: Border.all(
                        width: 3,
                        color: ColorSchemeManagerClass.colorPrimary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
