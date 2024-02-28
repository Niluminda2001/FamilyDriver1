import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewRequest_dariverCard extends StatelessWidget {
  const NewRequest_dariverCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.cyanAccent,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.car_crash_sharp),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Trip Request',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
              SizedBox(width: 120),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [Text('2024-03-02'), Text('12.30 Am')],
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('From - Maharama '),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("To - Colombo 07 "),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Customer Name - Harshana rajapaksha  '),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Customer Contact number - 0762821313'),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your onPressed logic here
                    print('Accept');
                  },
                  child: Text('  Accept  '),
                ),
              ),
              SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your onPressed logic here
                    print('cancel');
                  },
                  child: Text('  Cancel  '),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
