import 'package:flutter/material.dart';
import '/Widget/person_data.dart';
import '/Widget/call.dart';

class Call_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3.0),
      child: ListView.builder(
        itemBuilder: (ctx, i) => Call(Person_data[i + 1]),
        itemCount: Person_data.length - 5,
      ),
    );
  }
}
