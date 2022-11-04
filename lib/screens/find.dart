// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'find_employee.dart';
import 'find_job.dart';

class FindPage extends StatelessWidget {
  const FindPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Center(
            child: Text('Choose Your Job Type',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Center(
              child: Text(
                'Choose whether you are looking for a job or you are an organization that needs employees',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FindJob()));
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
              'Find a Job',
              style: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.w800,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FindEmployee()));
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
              'Find a Employee',
              style: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.w800,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
