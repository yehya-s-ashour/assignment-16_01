import 'package:bmi/models/bmi_brain.dart';
import 'package:bmi/pages/calculation_page/calculation_page.dart';
import 'package:bmi/pages/result_page/widgets/result_cad.dart';
import 'package:flutter/material.dart';

import 'widgets/app_bar.dart';

class ResultPage extends StatefulWidget {
  final double result;
  const ResultPage({required this.result});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String? status;
  String? description;
  Color? statusColor;
  @override
  void initState() {
    status = BMIBrain().findBMIRangeData(widget.result)['value'];
    description = BMIBrain().findBMIRangeData(widget.result)['description'];
    statusColor = BMIBrain().findBMIRangeData(widget.result)['color'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarr(),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 20,
                top: 40,
                bottom: 15,
              ),
              child: Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            ResultCard(
                description: description,
                status: status,
                statusColor: statusColor,
                result: widget.result),
            Spacer(),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsetsDirectional.only(
                      start: 40, end: 40, bottom: 10, top: 10),
                  backgroundColor: Color(0xffF75B4F),
                  minimumSize: const Size.fromHeight(50),
                  side: BorderSide.none,
                  shape: RoundedRectangleBorder(),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return CalculationPage();
                      },
                    ));
                  });
                },
                child: Text(
                  'Re-Calculate Your BMI',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
