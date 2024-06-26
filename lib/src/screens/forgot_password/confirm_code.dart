import 'package:acadia/src/components/appbar/appbar.dart';
import 'package:acadia/src/screens/forgot_password/components/confirmation_code/confirmation_component.dart';
import 'package:acadia/src/theme/theme.dart';
import 'package:flutter/material.dart';

class ConfirmCodePage extends StatefulWidget {
  const ConfirmCodePage({super.key});

  @override
  State<ConfirmCodePage> createState() => _ConfirmCodePageState();
}

class _ConfirmCodePageState extends State<ConfirmCodePage> {
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 117.0,
                  child: Image.asset('assets/icon.png'),
                ),
                Text(
                  'Digite o código enviado\nno email fornecido.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorSchemeManagerClass.colorPrimary,
                    fontWeight: FontWeight.w500,
                    fontSize: 23,
                  ),
                ),
                const ConfirmationCodeComponent(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/changePasswordPage');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorSchemeManagerClass.colorPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Text(
                        'Enviar',
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
