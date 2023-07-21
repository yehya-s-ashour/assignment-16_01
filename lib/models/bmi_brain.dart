import 'dart:math';

import 'package:flutter/material.dart';

class BMIBrain {
  double height = 165;
  int weight = 70;
  int age = 20;

  void updateHeight(double newHeight) {
    height = newHeight;
  }

  void updateWeight(int newWeight) {
    weight = newWeight;
  }

  void updateAge(int newAge) {
    age = newAge;
  }

  double calculateBMI() {
    return weight / pow(height / 100, 2);
  }

  Map<String, dynamic> findBMIRangeData(double bmiResult) {
    for (int i = 0; i < 4; i++) {
      if (bmiResult <= 18.5) {
        return {
          'description':
              'You are underweight,\nConsider gaining some weight for better health.',
          'value': 'Underweight',
          'color': Color.fromARGB(255, 240, 219, 153),
        };
      } else if (bmiResult > 18.5 && bmiResult <= 24.9) {
        return {
          'description': 'You have a normal BMI',
          'value': 'Normal weight',
          'color': Colors.green,
        };
      } else if (bmiResult > 25 && bmiResult <= 29.9) {
        return {
          'value': 'Overweight',
          'description': 'You are overweight,\nTake care of your health',
          'color': const Color.fromARGB(255, 193, 133, 43),
        };
      } else if (bmiResult >= 30) {
        return {
          'description':
              'You are obese,\nPlease consult a healthcare professional',
          'value': 'Obese',
          'color': Colors.red,
        };
      }
    }
    // If no matching range is found, return an empty map
    return {};
  }
}

List bmiResults = [
  {
    'description':
        'You are underweight,\nConsider gaining some weight for better health.',
    'value': 'Underweight',
    'normalRange': 'Less than 18.5',
    'weight': 52,
    'age': 25,
    'height': 165,
    'color': Colors.amber,
  },
  {
    'description': 'You have a normal BMI',
    'value': 'Normal weight',
    'normalRange': '18.5 - 24.9',
    'weight': 65,
    'age': 30,
    'height': 170,
    'color': Colors.green,
  },
  {
    'description': 'Overweight',
    'value': 'You are overweight,\nTake care of your health',
    'normalRange': '25.0 - 29.9',
    'weight': 80,
    'age': 40,
    'height': 180,
    'color': Colors.orange,
  },
  {
    'description': 'You are obese,\nPlease consult a healthcare professional',
    'value': 'Obese',
    'normalRange': '30.0 or more',
    'weight': 95,
    'age': 45,
    'height': 175,
    'color': Colors.red,
  },
];
