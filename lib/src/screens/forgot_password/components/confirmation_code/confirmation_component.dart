import 'package:acadia/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConfirmationCodeComponent extends StatefulWidget {
  const ConfirmationCodeComponent({super.key});

  @override
  State<ConfirmationCodeComponent> createState() =>
      _ConfirmationCodeComponentState();
}

class _ConfirmationCodeComponentState extends State<ConfirmationCodeComponent> {
  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ContainerNumbers(),
          ContainerNumbers(),
          ContainerNumbers(),
          ContainerNumbers(),
          ContainerNumbers(),
          ContainerNumbers(),
        ],
      ),
    );
  }
}

class ContainerNumbers extends StatefulWidget {
  const ContainerNumbers({super.key});

  @override
  State<ContainerNumbers> createState() => _ContainerNumbersState();
}

class _ContainerNumbersState extends State<ContainerNumbers> {
  final bool isColor = false;
  void colorFunction() {
    if(isColor == true){
      ColorSchemeManagerClass.colorPrimary;
    }else{
      ColorSchemeManagerClass.colorSecondary;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        height: 50,
        width: 50,
        child: TextFormField(
        textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          onChanged: (value) {
            colorFunction();
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }
}
