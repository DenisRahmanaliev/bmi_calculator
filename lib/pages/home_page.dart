import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/pages/widgets/calculate_widget.dart';
import 'package:bmi_calculator/pages/widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'widgets/custom_container_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 80;
  int weight = 40;
  int age = 20;

  Color maleColor = AppColors.inactiveColor;
  Color femaleColor = AppColors.inactiveColor;
  // bool isSelectedMale = false;
  // bool isSelectedFemale = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 40, 9, 118),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // dry - do not repeat yourself - ozunu uzun kaitalaba
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomContainerWidget(
                    isSelectedFemale: false,
                    isSelectedMale: false,
                    text: 'Бала',
                    icon: Icons.male,
                    onTap: () {
                      setState(() {
                        // isSelectedMale = true;
                        // isSelectedFemale = false;
                        maleColor = AppColors.activeColor;
                        femaleColor = AppColors.inactiveColor;
                      });
                    },
                    color: maleColor,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     setState(() {
                  //       isSelectedFemale = true;
                  //       isSelectedMale = false;
                  //       femaleColor = AppColors.activeColor;
                  //       maleColor = AppColors.inactiveColor;
                  //     });
                  //   },
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(15),
                  //       color: femaleColor,
                  //     ),
                  //     height: MediaQuery.of(context).size.height * 0.25,
                  //     width: MediaQuery.of(context).size.width * 0.4,
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         isSelectedFemale == true
                  //             ? Icon(
                  //                 Icons.check,
                  //                 color: AppColors.green,
                  //                 size: 50,
                  //               )
                  //             : Icon(
                  //                 Icons.female,
                  //                 size: 100,
                  //                 color: Colors.white.withOpacity(0.8),
                  //               ),
                  //         Text(
                  //           'FeMale'.toUpperCase(),
                  //           style: TextStyle(
                  //             fontSize: 25,
                  //             fontWeight: FontWeight.w700,
                  //             color: Colors.white,
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  CustomContainerWidget(
                    isSelectedFemale: false,
                    isSelectedMale: false,
                    text: 'Кыз',
                    icon: Icons.female,
                    color: femaleColor,
                    onTap: () {
                      setState(() {
                        // isSelectedFemale = true;
                        // isSelectedMale = false;
                        femaleColor = AppColors.activeColor;
                        maleColor = AppColors.inactiveColor;
                      });
                    },
                  ),
                ],
              ),
              Container(
                height: size.height * 0.25,
                width: size.width * 0.87,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColors.mainColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Бою',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toStringAsFixed(0),
                          style: TextStyle(
                            fontSize: 65,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'см',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white.withOpacity(0.8),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      inactiveColor: Colors.grey,
                      activeColor: Colors.red,
                      thumbColor: Colors.green,
                      min: 50,
                      max: 220,
                      value: height,
                      onChanged: (adamdinOzgortuusu) {
                        setState(() {
                          height = adamdinOzgortuusu;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WeightAgeWidget(
                    tag1: '3',
                    tag2: '4',
                    text: 'Салмак',
                    numberText: weight.toString(),
                    minus: () {
                      setState(() {
                        weight--;
                      });
                    },
                    plus: () {
                      setState(() {
                        weight++;
                      });
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  WeightAgeWidget(
                    tag1: '1',
                    tag2: '2',
                    text: 'Жаш',
                    numberText: age.toString(),
                    minus: () {
                      setState(() {
                        age--;
                      });
                    },
                    plus: () {
                      setState(() {
                        age++;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          bottomNavigationBar: CalculateWidget(
            text: 'Текшеруу',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    heightResult: height,
                    weightResult: weight,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
