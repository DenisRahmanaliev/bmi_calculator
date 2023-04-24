import 'package:flutter/material.dart';

class CalculateWidget extends StatelessWidget {
  const CalculateWidget({
    required this.onTap,
    required this.text,
    super.key,
  });

  final Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height * 0.09,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}
