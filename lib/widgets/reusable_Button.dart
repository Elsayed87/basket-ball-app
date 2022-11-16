import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton(
      {Key? key, required this.buttonTitle, required this.onpressed})
      : super(key: key);
  final String buttonTitle;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange[600]),
      child: Text(
        buttonTitle,
        style: const TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
