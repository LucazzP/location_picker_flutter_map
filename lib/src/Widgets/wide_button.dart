import 'package:flutter/material.dart';

class WideButton extends StatelessWidget {
  const WideButton(this.text,
      {Key? key,
      required,
      this.padding = 0.0,
      this.height,
      this.width,
    this.textStyle = const TextStyle(fontSize: 20),
      required this.onPressed,
    this.style,
  })
      : super(key: key);

  final String text;
  final double padding;
  final double? height;
  final double? width;
  final ButtonStyle? style;
  final TextStyle textStyle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 45,
      width: width ??
          (MediaQuery.of(context).size.width <= 500
              ? MediaQuery.of(context).size.width
              : 350),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: ElevatedButton(
          style: style,
          onPressed: onPressed,
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
