import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/text_styles/app_text_styles.dart';
import 'package:bmi_calculator/constants/texts/app_texts.dart';
import 'package:bmi_calculator/data/bmi_brain.dart';
import 'package:bmi_calculator/pages/widgets/calculate_widget.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.heightResult,
    required this.weightResult,
  });
  final double heightResult;
  final int weightResult;
  @override
  Widget build(BuildContext context) {
    final bmi = BmiBrain.calculateBmi(heightResult, weightResult);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secondaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  AppTexts.result,
                  style: AppTextStyles.white35w700,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.mainColor,
                ),
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      BmiBrain.bmiResult(bmi),
                      style: AppTextStyles.green30w700,
                    ),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: AppTextStyles.green70w900,
                    ),
                    Text(
                      BmiBrain.giveDescription(bmi),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.green20w700,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: CalculateWidget(
          text: 'Re-Calculate',
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
