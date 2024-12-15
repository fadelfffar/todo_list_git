// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputTextfield extends StatefulWidget {
  final String? hintTextData;
  final String? labelTextData;
  final String? suffixIconImage;

  InputTextfield({
    Key? key,
    this.hintTextData,
    this.labelTextData,
    this.suffixIconImage,
  }) : super(key: key);

  @override
  State<InputTextfield> createState() => _InputTextfieldState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _InputTextfieldState extends State<InputTextfield> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        floatingLabelAlignment: FloatingLabelAlignment.start,
        hintText: widget.hintTextData,
        labelText: widget.labelTextData,
        suffixIcon: Image.asset(widget.suffixIconImage!),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}