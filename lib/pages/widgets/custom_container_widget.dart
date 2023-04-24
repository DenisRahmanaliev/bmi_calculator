import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  CustomContainerWidget({
    required this.text,
    required this.icon,
    required this.onTap,
    required this.color,
    this.isSelectedMale = false,
    this.isSelectedFemale = false,
  });
  final String text;
  final IconData icon;
  final Function()? onTap;
  final Color color;
  bool isSelectedMale;
  bool isSelectedFemale;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: color),
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isSelectedMale == true)
              Icon(
                Icons.check,
                color: AppColors.green,
                size: 50,
              )
            else if (isSelectedFemale == true)
              Icon(
                Icons.check,
                color: AppColors.green,
                size: 50,
              )
            else
              Icon(
                icon,
                size: 100,
                color: Colors.white.withOpacity(0.8),
              ),
            Text(
              text.toUpperCase(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
