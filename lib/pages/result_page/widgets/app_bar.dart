import 'package:flutter/material.dart';

class AppBarr extends StatefulWidget {
  const AppBarr({super.key});

  @override
  State<AppBarr> createState() => _AppBarrState();
}

class _AppBarrState extends State<AppBarr> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsetsDirectional.only(
              start: 10,
            ),
            alignment: Alignment.center,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white12),
            child: IconButton(
              padding: EdgeInsetsDirectional.only(end: 3),
              icon: Center(
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Text(
            "  BMI Calculator",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Expanded(flex: 1, child: Container()),
      ],
    );
  }
}
