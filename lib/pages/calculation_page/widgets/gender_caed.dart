import 'package:flutter/material.dart';

class GenderButtton extends StatefulWidget {
  final IconData icon;
  final String gender;
  final borderColor;
  final Function() onPressed;
  GenderButtton(
      {required this.gender,
      required this.icon,
      required this.borderColor,
      required this.onPressed});

  @override
  State<GenderButtton> createState() => _GenderButttonState();
}

class _GenderButttonState extends State<GenderButtton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          margin: EdgeInsetsDirectional.only(
            start: 20,
            end: 10,
            top: 20,
          ),
          height: 175,
          decoration: BoxDecoration(
            color: Color(0xff393E46),
            borderRadius: BorderRadius.circular(13),
            border: Border.all(
              color: widget.borderColor,
              width: 3,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                size: 55,
                color: Colors.white,
              ),
              SizedBox(height: 10),
              Text(
                widget.gender,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
