// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class JobList extends StatefulWidget {
  const JobList({super.key});

  @override
  State<JobList> createState() => _JobListState();
}

class _JobListState extends State<JobList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Job')),
    );
  }
}
