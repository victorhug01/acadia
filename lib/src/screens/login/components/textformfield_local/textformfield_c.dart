import 'package:acadia/src/theme/theme.dart';
import 'package:flutter/material.dart';

class TextFormComponent extends StatefulWidget {
  final String textLabel;
  const TextFormComponent({super.key, required this.textLabel});

  @override
  State<TextFormComponent> createState() => _TextFormComponentState();
}

final OutlineInputBorder borderOutline = OutlineInputBorder(
  borderRadius: BorderRadius.circular(17),
  borderSide: BorderSide(
    color: ColorSchemeManagerClass.colorPrimary,
    style: BorderStyle.solid,
    width: 2,
  ),
);

class _TextFormComponentState extends State<TextFormComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20.0),
          labelText: widget.textLabel,
          labelStyle: TextStyle(
            color: ColorSchemeManagerClass.colorPrimary,
            fontSize: 19,
          ),
          enabledBorder: borderOutline,
          focusedBorder: borderOutline,
          border: borderOutline,
        ),
      ),
    );
  }
}
