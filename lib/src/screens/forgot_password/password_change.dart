import 'package:acadia/src/components/appbar/appbar.dart';
import 'package:acadia/src/components/textformfield_local/textformfield_c.dart';
import 'package:acadia/src/theme/theme.dart';
import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBarComponent(),
      ),
      body: Form(
        child: Center(
          child: SizedBox(
            height: 600,
            width: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 117.0,
                  child: Image.asset('assets/icon.png'),
                ),
                Text(
                  'Agora vamos redefinir a\nsenha!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorSchemeManagerClass.colorPrimary,
                    fontWeight: FontWeight.w500,
                    fontSize: 23,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormComponent(textLabel: 'Digite uma senha'),
                    TextFormComponent(textLabel: 'Confirmar a sua senha'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorSchemeManagerClass.colorPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Text(
                        'Confirmar',
                        style: TextStyle(
                            color: ColorSchemeManagerClass.colorSecondary,
                            fontSize: 22),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
