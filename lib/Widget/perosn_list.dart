import 'package:flutter/material.dart';
import '/Widget/person_data.dart';
import '../Screen/chat_room.dart';

class Person_Tile extends StatelessWidget {
  final Data Details;

  Person_Tile(this.Details);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.of(context)
                .pushNamed(ChatRoom.routename, arguments: Details.Name);
          },
          leading: const CircleAvatar(
            child: Icon(
              Icons.person_pin,
              size: 40,
            ),
            backgroundColor: Colors.green,
          ),
          title: Container(
            child: Text(
              Details.Name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Text(Details.title),
          trailing: Text(Details.Date),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
