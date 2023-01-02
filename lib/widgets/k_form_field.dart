import 'package:flutter/material.dart';

class KFormField extends StatelessWidget {
  const KFormField({
    super.key,
    required this.hintText,
    required this.label,
  });
  final String label;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Color(0xFF959AA1),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 11,
              vertical: 12,
            ),
            isCollapsed: true,
            isDense: true,
          ),
        )
      ],
    );
  }
}
