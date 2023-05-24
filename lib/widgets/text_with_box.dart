import 'package:flutter/material.dart';

class TextWithBox extends StatelessWidget {
  const TextWithBox({
    required this.value,
    required this.text,
    this.onChange,
    super.key,
  });

  final bool value;
  final String text;
  final Function(bool?)? onChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            text,
            maxLines: 2,
          ),
        ),
        Checkbox(value: value, onChanged: onChange)
      ],
    );
  }
}