import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '/Widget/person_data.dart';
import '../Widget/perosn_list.dart';

class chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3.0),
      child: ListView.builder(
        itemBuilder: (ctx, i) => Person_Tile(Person_data[i]),
        itemCount: Person_data.length,
      ),
    );
  }
}
