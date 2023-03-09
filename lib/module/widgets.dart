
import 'extension.dart';
import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String title;
  final double? fontSize;
  final Color? color;
  final bool bold;
  const Label(this.title, {this.fontSize, this.color, this.bold = false ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        title,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal
      )
    );
  }
}


class Button extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Icon? icon;
  final Color? color;
  final EdgeInsets? padding;
  const Button({required this.title, required this.onTap, this.color, this.icon,
    this.padding, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          padding: MaterialStateProperty.all(padding),
        ),
        child: icon != null
        ? Row(
          mainAxisSize: MainAxisSize.min ,
          children: [
            Icon(icon!.icon, size: 18),
            const SizedBox(width: 7),
            title.toLabel()
          ],
        )
          : Label(title)
    );
  }
}

class Edit extends StatelessWidget {
  final String hint;
  final Function(String)? onChange;
  final bool autofocus;
  final bool password;
  final TextEditingController? controller;
  const Edit({required this.hint, this.onChange, this.autofocus = false, this.password = false, this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: password,
      autofocus: autofocus,
      onChanged: onChange,
      decoration: InputDecoration(
        labelText: hint,
        labelStyle: TextStyle(color: Colors.grey.shade700, fontSize: 13),
        border: OutlineInputBorder(
          gapPadding: 20,
          borderRadius: BorderRadius.circular(15)
        )
      ),
    );
  }
}
