import 'package:flutter/material.dart';
import '/Widget/person_data.dart';

class status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(
            Icons.person,
            size: 40,
          ),
          radius: 35,
          backgroundColor: Colors.green,
        ),
        title: Container(
          padding: const EdgeInsets.all(6),
          child: const Text(
            "My Status",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        subtitle: const Text("Tap to add Status and update"),
      ),
    );
  }
}
