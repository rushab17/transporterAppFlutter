import 'package:flutter/material.dart';
import 'package:liveasy/constants/color.dart';
import 'package:liveasy/constants/fontSize.dart';
import 'package:liveasy/constants/fontWeights.dart';
import 'package:liveasy/constants/spaces.dart';
import 'package:liveasy/functions/bookingApiCallsOrders.dart';
import 'package:liveasy/widgets/alertDialog/ProductTypeEnterAlertDialog.dart';

class CompletedButtonOrders extends StatelessWidget {
  String bookingId;
  CompletedButtonOrders({Key? key, required this.bookingId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BookingApiCallsOrders bookingApiCallsOrders = BookingApiCallsOrders();

    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        )),
        backgroundColor: MaterialStateProperty.all<Color>(shareButtonColor),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return ProductTypeEnterAlertDialog(
              heading: 'Completed Date',
            );
          },
        );
        print("awefae$bookingId");
        // bookingApiCallsOrders.updateBookingApi("20-08-2021", bookingId);
      },
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                space_5,
                size_1,
                space_5,
                size_1,
              ),
              child: Text(
                'Completed',
                style: TextStyle(
                  letterSpacing: 0.7,
                  fontWeight: normalWeight,
                  color: white,
                  fontSize: size_7,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
