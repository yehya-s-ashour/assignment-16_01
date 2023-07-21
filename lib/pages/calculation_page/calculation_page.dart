import 'dart:math';

import 'package:bmi/models/bmi_brain.dart';
import 'package:bmi/pages/result_page/result_page.dart';
import 'package:bmi/pages/calculation_page/widgets/card_2_buttons.dart';
import 'package:bmi/pages/calculation_page/widgets/gender_caed.dart';
import 'package:bmi/pages/calculation_page/widgets/height_slider.dart';
import 'package:flutter/material.dart';

class CalculationPage extends StatefulWidget {
  const CalculationPage({super.key});

  @override
  State<CalculationPage> createState() => _CalculationPageState();
}

class _CalculationPageState extends State<CalculationPage> {
  BMIBrain bmiBrain = BMIBrain();

  bool isSelected1 = true;
  bool isSelected2 = false;

  double result = 0;

  void calculateBMI() {
    setState(() {
      result = bmiBrain.calculateBMI();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              GenderButtton(
                gender: "Male",
                icon: Icons.male_rounded,
                borderColor:
                    isSelected1 ? Color(0xffFFD369) : Color(0xff393E46),
                onPressed: () {
                  setState(() {
                    isSelected1 = true;
                    isSelected2 = false;
                  });
                },
              ),
              GenderButtton(
                gender: "Female",
                icon: Icons.female_rounded,
                borderColor:
                    isSelected2 ? Color(0xffFFD369) : Color(0xff393E46),
                onPressed: () {
                  setState(() {
                    isSelected1 = false;
                    isSelected2 = true;
                  });
                },
              ),
            ],
          ),
          HeightSlider(
              height: bmiBrain.height,
              onChanged: (value) {
                setState(() {
                  bmiBrain.updateHeight(value);
                  print(value);
                });
              }),
          Row(
            children: [
              Card2Buttons(
                name: "Weight",
                value: bmiBrain.weight,
                onValueChanged1: () {
                  setState(() {
                    bmiBrain.weight++;
                    bmiBrain.updateWeight(bmiBrain.weight);
                    print(bmiBrain.weight);
                  });
                },
                onValueChanged2: () {
                  setState(() {
                    bmiBrain.weight--;
                    bmiBrain.updateWeight(bmiBrain.weight);
                    print(bmiBrain.weight);
                  });
                },
              ),
              Card2Buttons(
                name: "Age",
                value: bmiBrain.age,
                onValueChanged1: () {
                  setState(() {
                    bmiBrain.age++;
                    bmiBrain.updateAge(bmiBrain.age);
                    print(bmiBrain.age);
                  });
                },
                onValueChanged2: () {
                  setState(() {
                    bmiBrain.age--;
                    bmiBrain.updateAge(bmiBrain.age);
                    print(bmiBrain.age);
                  });
                },
              )
            ],
          ),
          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsetsDirectional.only(
                  start: 40, end: 40, bottom: 10, top: 10),
              backgroundColor: Colors.white,
            ),
            onPressed: () {
              calculateBMI();
              print(result);
              print(bmiBrain.findBMIRangeData(result));
              setState(() {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ResultPage(
                      result: result,
                    );
                  },
                ));
              });
            },
            child: Text(
              'Calculate',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Color(0xff393E46),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
