import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liveasy/constants/color.dart';
import 'package:liveasy/constants/fontWeights.dart';
import 'package:liveasy/constants/spaces.dart';
import 'package:liveasy/widgets/LoadEndPointTemplate.dart';
import 'package:liveasy/widgets/callButton.dart';
import 'package:liveasy/widgets/loadLabelValueTemplate.dart';
import 'package:liveasy/widgets/trackButton.dart';
import 'buttons/completedButtonOrders.dart';
import 'linePainter.dart';

class OngoingCardOrders extends StatelessWidget {
  //variables
  final String loadingPoint;
  final String unloadingPoint;
  final String startedOn;
  final String endedOn;
  final String vehicleNo;
  final String companyName;
  final String driverPhoneNum;
  final String driverName;
  final String imei;
  final String transporterPhoneNumber;
  final String bookingId;
  // final String transporterName;

  OngoingCardOrders({
    required this.loadingPoint,
    required this.unloadingPoint,
    required this.startedOn,
    required this.endedOn,
    required this.vehicleNo,
    required this.companyName,
    required this.driverPhoneNum,
    required this.driverName,
    required this.imei,
    required this.bookingId,
    required this.transporterPhoneNumber,
    // required this.transporterName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: space_3),
      child: Container(
        child: Card(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(space_4),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LoadEndPointTemplate(
                                text:
                                    loadingPoint != null ? loadingPoint : 'NA',
                                endPointType: 'loading'),
                            Container(
                                padding: EdgeInsets.only(left: 2),
                                height: space_6,
                                width: space_12,
                                child: CustomPaint(
                                  foregroundPainter: LinePainter(),
                                )),
                            LoadEndPointTemplate(
                                text: unloadingPoint != null
                                    ? unloadingPoint
                                    : 'NA',
                                endPointType: 'unloading'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: space_1),
                                  child: Image(
                                      height: 16,
                                      width: 23,
                                      color: black,
                                      image: AssetImage(
                                          'assets/icons/TruckIcon.png')),
                                ),
                                Text(
                                  companyName != null ? companyName : 'NA',
                                  style: TextStyle(
                                    color: liveasyBlackColor,
                                    fontWeight: mediumBoldWeight,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: space_2,
                            ),
                            CallButton(
                              directCall: false,
                              transporterPhoneNum: transporterPhoneNumber,
                              driverPhoneNum: driverPhoneNum,
                              driverName: driverName,
                              transporterName: companyName,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: space_4),
                      child: Column(
                        children: [
                          LoadLabelValueTemplate(
                              value: vehicleNo, label: 'Vehicle Number'),
                          LoadLabelValueTemplate(
                              value: driverName, label: 'Driver Name'),
                          LoadLabelValueTemplate(
                              value: startedOn, label: 'Started on')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: contactPlaneBackground,
                padding: EdgeInsets.symmetric(
                  vertical: space_2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TrackButton(truckApproved: false),
                    CompletedButtonOrders(bookingId: bookingId),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
