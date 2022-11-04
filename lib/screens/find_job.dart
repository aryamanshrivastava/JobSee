// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'joblist.dart';

class FindJob extends StatefulWidget {
  const FindJob({super.key});

  @override
  State<FindJob> createState() => _FindJobState();
}

class _FindJobState extends State<FindJob> {
  final jobController = TextEditingController();
  int _currentSliderValue = 400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Text(
              'Job Description',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: jobController,
                style: TextStyle(fontSize: 20, color: Colors.black),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2.0),
                    ),
                    labelText: 'Job Title',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xffC9C9C9))),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                //controller: jobController,
                style: TextStyle(fontSize: 20, color: Colors.black),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2.0),
                    ),
                    labelText: 'Job Description',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xffC9C9C9))),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: jobController,
                style: TextStyle(fontSize: 20, color: Colors.black),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2.0),
                    ),
                    labelText: 'Skills',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xffC9C9C9))),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            // Text(
            //   'Location Ranges',
            //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            // ),
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 20),
            //   width: 20,
            //   height: 20,
            // ),
            Text(
              'Expected Pay Ranges',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _currentSliderValue.toDouble(),
              min: 400,
              max: 4000,
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value.toInt();
                });
              },
              label: '$_currentSliderValue',
            ),
            Text(
              '₹ $_currentSliderValue',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JobList()));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Color(0xff9B4BFF),
                elevation: 0,
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1,
                    vertical: MediaQuery.of(context).size.height * 0.012),
              ),
              child: Text(
                'Continue',
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
