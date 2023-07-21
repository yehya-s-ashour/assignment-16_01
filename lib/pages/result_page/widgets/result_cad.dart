import 'package:flutter/material.dart';

class ResultCard extends StatefulWidget {
  String? status;
  String? description;
  Color? statusColor;
  double result;
  ResultCard({
    required this.description,
    required this.status,
    required this.statusColor,
    required this.result,
  });

  @override
  State<ResultCard> createState() => _ResultCardState();
}

class _ResultCardState extends State<ResultCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 50, end: 50, top: 20),
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        color: Color(0xff393E46),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            widget.status!,
            style: TextStyle(
              color: widget.statusColor,
              fontSize: 28,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            widget.result.toStringAsFixed(1).toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            widget.description!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          Column(
            children: [
              Text(
                "Normal BMI Range:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "18.5 - 25 KG/m",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      )),
                  WidgetSpan(
                    child: Transform.translate(
                      offset: const Offset(2, -10),
                      child: Text(
                        '2',
                        textScaleFactor: 0.7,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsetsDirectional.only(
                    start: 25, end: 25, bottom: 10, top: 10),
                backgroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text(
                "Save Result",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff393E46),
                ),
              )),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
