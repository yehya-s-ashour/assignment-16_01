import 'package:flutter/material.dart';
import 'package:horizontal_picker/horizontal_picker.dart';

class HeightSlider extends StatefulWidget {
  double height;
  Function(double) onChanged;
  HeightSlider({required this.height, required this.onChanged});

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 20, end: 1, top: 20),
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xff393E46),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Height: ",
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
            widget.height.round().toString(),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          // Slider(
          //   value: widget.currentSliderValue,
          //   min: 100,
          //   max: 220,
          //   activeColor: Color(0xffFFD369),
          //   label: widget.currentSliderValue.round().toString(),
          //   onChanged: (value) {
          //     setState(() {
          //       widget.currentSliderValue = value;
          //     });
          //   },
          // ),
          HorizontalPicker(
            height: 100,
            minValue: 100,
            maxValue: 230,
            divisions: 130,
            suffix: " cm",
            initialPosition: InitialPosition.center,
            showCursor: false,
            backgroundColor: Color(0xff393E46),
            activeItemTextColor: Colors.blue,
            passiveItemsTextColor: Color(0xffFFD369),
            onChanged: widget.onChanged,
          ),
        ],
      ),
    );
  }
}
