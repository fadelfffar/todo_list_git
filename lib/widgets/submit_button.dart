// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubmitButton extends StatelessWidget {
  static const int _buttonColor = 0xff58BB19;
  String buttonText;
  SubmitButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //TODO: Submit data to database and show the data on the screen
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color.lerp(Colors.white, Colors.amberAccent, 0.5)),
        fixedSize: WidgetStatePropertyAll(Size(360.0, 48.0))
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
