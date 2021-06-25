import 'package:flutter/material.dart';
import 'package:liveasy/constants/color.dart';
import 'package:liveasy/constants/fontSize.dart';
import 'package:liveasy/constants/fontWeights.dart';
import 'package:liveasy/constants/spaces.dart';

// ignore: must_be_immutable
class TrackButton extends StatelessWidget {
  bool truckApproved = false;

  TrackButton({required this.truckApproved});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31,
      width: 90,
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              )),
          backgroundColor: MaterialStateProperty.all<Color>(darkBlueColor),
        ),
        onPressed: () {
          print('Track Button Pressed');
        },
        child: Container(
          margin: EdgeInsets.only(left: space_2),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: space_1),
                child: truckApproved
                    ? Container()
                    : Image(
                    height: 16,
                    width: 11,
                    image: AssetImage('assets/icons/lockIcon.png')),
              ),
              Text(
                'Track',
                style: TextStyle(
                  letterSpacing: 0.7,
                  fontWeight: normalWeight,
                  color: white,
                  fontSize: size_7,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
