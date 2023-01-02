import 'package:flutter/material.dart';

class KButton extends StatelessWidget {
  const KButton({
    super.key,
    required this.buttonText,
  });
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 44,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            elevation: 1, backgroundColor: const Color(0xFF00726D)),
        child: Text(
          buttonText,
        ),
      ),
    );
  }
}
