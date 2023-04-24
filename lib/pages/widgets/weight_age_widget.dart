import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class WeightAgeWidget extends StatelessWidget {
  const WeightAgeWidget({
    super.key,
    required this.text,
    required this.numberText,
    this.tag1,
    this.tag2,
    this.minus,
    this.plus,
  });
  final String? text;
  final String numberText;
  final void Function()? minus;
  final void Function()? plus;
  final Object? tag1;
  final Object? tag2;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.25,
      width: size.width * 0.4,
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text!.toUpperCase(),
            style: TextStyle(
              fontSize: 25,
              color: Colors.white.withOpacity(0.8),
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            numberText,
            style: TextStyle(
              fontSize: 45,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: tag1,
                onPressed: minus,
                child: Icon(
                  Icons.remove,
                  size: 40,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              FloatingActionButton(
                heroTag: tag2,
                onPressed: plus,
                child: Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
