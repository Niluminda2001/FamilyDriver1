import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constant/App_color.dart';

class Ridedetail extends StatefulWidget {
  double totalprice;
  String Distance;
  String driver_name, driver_nic, driver_contact_num, driver_age;
  // ignore: non_constant_identifier_names
  Ridedetail(
      {super.key,
      required this.Distance,
      required this.totalprice,
      required this.driver_age,
      required this.driver_contact_num,
      required this.driver_name,
      required this.driver_nic});

  @override
  State<Ridedetail> createState() => _RidedetailState();
}

class _RidedetailState extends State<Ridedetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
      ),
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Details about Trip",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Center(
                child: Text(
                  "Makesure about Details ",
                  style: TextStyle(
                      color: AppColors.drivercardnotactive, fontSize: 14),
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 320,
                height: 520,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(height: 10),
                    Stack(
                      children: [
                        Container(
                          height: 170,
                          width: 270,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '  ' + widget.driver_name,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '   NIC - ' + widget.driver_nic,
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                '   Contact number - ' +
                                    widget.driver_contact_num,
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                '   Age - 25',
                                style: TextStyle(fontSize: 10),
                              ),
                              Divider(),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "   Hello, I'm Harshana. I specialize \n   in Driving and hold a degree in \n   evereything . ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: -24,
                          right: -28,
                          child: Image.asset(
                            "assets/DriverPic.png",
                            height: 150,
                            width: 150,
                            fit: BoxFit
                                .contain, // Ensure the image fits within the container
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 30,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[200],
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          LocationPoint(),
                          SizedBox(width: 10),
                          Text("Pickup Location "),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.more_vert),
                    ),
                    Container(
                      height: 30,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[200],
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          EndlocationPoint(),
                          SizedBox(width: 10),
                          Text("Drop location ")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Total Distance',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '28Km',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Total Price',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Rs' + widget.totalprice.toString(),
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Arrival time',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '11.30 PM - 12.00 PM',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your confirmation logic here
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  backgroundColor: Colors.blue, // Button background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    // Button border radius
                  ),
                ),
                child: Text(
                  'Confirm', // Button text
                  style: TextStyle(
                    fontSize: 18, // Button text size
                    fontWeight: FontWeight.bold, // Button text weight
                    color: Colors.white, // Button text color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container EndlocationPoint() {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}

class LocationPoint extends StatelessWidget {
  const LocationPoint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
