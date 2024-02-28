import 'package:familydriver/screens/Driver/widgets/Request_DriverCard.dart';
import 'package:familydriver/screens/Driver/widgets/Schedule_DriverCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Available_Driver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Schedule_RiderCard(),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: NewRequest_dariverCard(),
              ),
            ),
          ],
        )
        // backgroundColor: Color(0xff22262A),
        );
  }
}
