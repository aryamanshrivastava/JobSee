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
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Text(
            'Job List',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: const Icon(Icons.person),
                    trailing:
                        IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                    title: Text("Jobs $index"));
              }),
        ],
      ),
    );
  }
}
