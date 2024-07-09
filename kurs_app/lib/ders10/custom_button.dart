import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {super.key, required this.buttonText, required this.onPressed});
  final String buttonText;
  final VoidCallback onPressed;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  var buttonColor = const Color.fromARGB(255, 237, 59, 118);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            buttonColor = Colors.pink;
          });
        } else {
          setState(() {
            buttonColor = Colors.pink.shade500;
          });
        }
      },
      onPressed: widget.onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          buttonColor,
        ),
      ),
      child: Text(widget.buttonText),
    );
  }
}
