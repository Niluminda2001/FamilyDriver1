import 'package:familydriver/constant/App_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DriverCard extends StatefulWidget {
  const DriverCard({super.key});

  @override
  State<DriverCard> createState() => _DriverCardState();
}

class _DriverCardState extends State<DriverCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 350,
        child: Center(
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 170,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.drivercardactive,
                  ),
                ),
              ),
              Positioned(
                top: 15,
                right: 29,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: CircleAvatar(
                    // profile img
                    child: ClipOval(
                      child: Image.asset(
                        'assets/propic2.jpg',
                        width: 86, // adjusted to accommodate border
                        height: 86, // adjusted to accommodate border
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 24,
                child: const Text(
                  'Harshana Chandarakumara',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 24,
                child: const Text(
                  'Platinum Driver',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                  top: 135,
                  left: 35,
                  child: Text(
                    "Pick me,I'm promised to be your \nbest Driver ",
                    style: TextStyle(fontSize: 13.0, color: Colors.black),
                  )),
              Positioned(
                  top: 180,
                  left: 24,
                  child: Text(
                    "And I'm familiar with\nAuto & Manual vehicle types!",
                    style: TextStyle(fontSize: 11.0, color: Colors.white),
                  )),
              Positioned(
                  top: 180,
                  left: 230,
                  child: Row(
                    children: [
                      // Aiye rating danawanm methanin danna pluwan
                      ElevatedButton(
                        onPressed: () {},
                        child: Center(
                          child: Row(
                            children: [
                              Text("Select"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
