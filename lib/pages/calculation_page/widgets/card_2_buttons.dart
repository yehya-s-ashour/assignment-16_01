import 'package:flutter/material.dart';

class Card2Buttons extends StatefulWidget {
  int value;
  String name;
  Function() onValueChanged1;
  Function() onValueChanged2;
  Card2Buttons({
    required this.name,
    required this.value,
    required this.onValueChanged1,
    required this.onValueChanged2,
  });

  @override
  State<Card2Buttons> createState() => _Card2ButtonsState();
}

class _Card2ButtonsState extends State<Card2Buttons> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsetsDirectional.only(start: 20, end: 10, top: 20),
          height: 200,
          decoration: BoxDecoration(
            color: Color(0xff393E46),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.value.toString(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.only(end: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white30),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Center(
                        child: Icon(
                          Icons.add,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: widget.onValueChanged1,
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(start: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white30),
                    child: IconButton(
                        padding: EdgeInsetsDirectional.only(bottom: 40),
                        icon: Center(
                          child: Icon(
                            Icons.minimize,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: widget.onValueChanged2),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
