import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  static const route_name = '/Setting';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
        backgroundColor: const Color.fromRGBO(7, 94, 81, 1),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(
            height: 7,
          ),
          const ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person_add_sharp),
              radius: 30,
            ),
            title: Text(
              "Luqman Asif",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
