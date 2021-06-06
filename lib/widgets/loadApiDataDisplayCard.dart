import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liveasy/constants/color.dart';
import 'package:liveasy/constants/fontSize.dart';
import 'package:liveasy/constants/fontWeights.dart';
<<<<<<< HEAD:lib/widgets/loadApiDataDisplayCard.dart
import 'package:liveasy/constants/spaces.dart';
=======
import 'package:liveasy/screens/loadDetailsScreen.dart';
>>>>>>> 8190f28bf3339760d05f8c1d70b2f07279ea7c93:lib/detailCard.dart
import 'package:liveasy/widgets/bidButtonWidget.dart';
import 'package:liveasy/widgets/contactWidget.dart';
import 'package:liveasy/widgets/loadingPointImageIcon.dart';
import 'package:liveasy/widgets/priceButtonWidget.dart';
import 'package:liveasy/widgets/truckImageWidget.dart';
import 'package:liveasy/widgets/unloadingPointImageIcon.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class LoadApiDataDisplayCard extends StatelessWidget {
  String? productType;
  String? loadingPoint;
  String? unloadingPoint;
  String? truckType;
  String? noOfTrucks;
  String? weight;
  bool? isPending;
  String? comment;
  String? status;
  bool? isCommentsEmpty;

<<<<<<< HEAD:lib/widgets/loadApiDataDisplayCard.dart
  LoadApiDataDisplayCard(
      {this.loadingPoint,
      this.unloadingPoint,
      this.productType,
      this.truckPreference,
      this.noOfTrucks,
      this.weight,
      this.isPending,
      this.comments,
      this.isCommentsEmpty});
=======
  DetailCard({
    this.productType,
    this.loadingPoint,
    this.unloadingPoint,
    this.truckType,
    this.noOfTrucks,
    this.weight,
    this.isPending,
    this.comment,
    this.status,
    this.isCommentsEmpty});
>>>>>>> 8190f28bf3339760d05f8c1d70b2f07279ea7c93:lib/detailCard.dart

  @override
  Widget build(BuildContext context) {
    return Column(children: [
<<<<<<< HEAD:lib/widgets/loadApiDataDisplayCard.dart
      Card(
        elevation: 10,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.only(left: space_3, top: space_3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              LoadingPointImageIcon(
                                height: 12,
                                width: 12,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Text(
                                  "$loadingPoint",
                                  style: TextStyle(
                                      fontSize: size_9,
                                      color: unloadingPointTextColor,
                                      fontWeight: mediumBoldWeight),
=======
      GestureDetector(onTap: (){
       Get.to(()=>LoadDetailsScreen(
         loadingPoint: "$loadingPoint",
         unloadingPoint: "$unloadingPoint",
         productType: "$productType",
         truckType: "$truckType",
         noOfTrucks: "$noOfTrucks",
         weight: "$weight",
         isPending: "$status" == 'pending'
             ? true
             : false,
         comment: "$comment",
         status: "$status",
         isCommentsEmpty:
         "$comment" == '' ? true : false,
       ));

      },
        child: Card(
          elevation: 10,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.only(left: 15, top: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                LoadingPointImageIcon(
                                  height: 12,
                                  width: 12,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Text(
                                    "$loadingPoint",
                                    style: TextStyle(
                                        fontSize: size_9,
                                        color: loadingPointTextColor,
                                        fontWeight: mediumBoldWeight),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.39,
                            ),
                            Row(
                              children: [
                                UnloadingPointImageIcon(width: 12, height: 12),
                                SizedBox(
                                  width: 8,
>>>>>>> 8190f28bf3339760d05f8c1d70b2f07279ea7c93:lib/detailCard.dart
                                ),
                                Expanded(
                                  child: Text(
                                    "$unloadingPoint",
                                    style: TextStyle(
                                        fontSize: size_9,
                                        color: unloadingPointTextColor,
                                        fontWeight: mediumBoldWeight),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Column(
                                            children: [
                                              Text("Truck Type",
                                                  style: TextStyle(
                                                      fontSize: size_6 - 1,
                                                      fontWeight: regularWeight)),
                                              Text("$truckType",
                                                  style: TextStyle(
                                                    fontWeight: mediumBoldWeight,
                                                    fontSize: size_7,
                                                  ))
                                            ],
                                          ),
                                          SizedBox(
                                            height: 13,
                                          ),
                                          Column(
                                            children: [
                                              Text("Weight",
                                                  style: TextStyle(
                                                      fontSize: size_6 - 1,
                                                      fontWeight: regularWeight)),
                                              Text("$weight",
                                                  style: TextStyle(
                                                    fontWeight: mediumBoldWeight,
                                                    fontSize: size_7,
                                                  ))
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            Text("Tyre",
                                                style: TextStyle(
                                                    fontSize: size_6 - 1,
                                                    fontWeight: regularWeight)),
                                            Text("NA",
                                                style: TextStyle(
                                                  fontWeight: mediumBoldWeight,
                                                  fontSize: size_7,
                                                ))
                                          ],
                                        ),
                                        SizedBox(
                                          height: 13,
                                        ),
                                        Column(
                                          children: [
                                            Text("Product Type",
                                                style: TextStyle(
                                                    fontSize: size_6 - 1,
                                                    fontWeight: regularWeight)),
                                            Container(
                                              child: Text("$productType",
                                                  style: TextStyle(
                                                    fontWeight: mediumBoldWeight,
                                                    fontSize: size_7,
                                                  )),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  Expanded(flex: 1, child: TruckImageWidget())
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PriceButtonWidget(),
                  BidButtonWidget(),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ContactWidget()
            ],
          ),
        ),
      )
    ]);
  }
}