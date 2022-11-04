// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmployeeList extends StatefulWidget {
  const EmployeeList({super.key});

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('List')),
    );
  }
}
