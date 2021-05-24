import 'package:flutter/material.dart';
import 'package:liveasy/constants/spaces.dart';
import 'package:liveasy/screens/cityNameInputScreen.dart';
import 'package:get/get.dart';

class AddressInputWidget extends StatelessWidget {
  final String hintText;
  final Widget icon;
  final TextEditingController controller;
  final String pointType;
  AddressInputWidget(this.hintText, this.icon, this.controller, this.pointType);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: smallSpace),
      child: Material(
        elevation: 8,
        child: TextFormField(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
            Get.to(CityNameInputScreen(pointType));
          },
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            icon: icon,
          ),
        ),
      ),
    );
  }
}
