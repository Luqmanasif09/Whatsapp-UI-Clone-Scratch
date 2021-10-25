import 'package:flutter/material.dart';
import '/Widget/person_data.dart';
import 'package:whatsapp/Screen/chat_room.dart';

class Call extends StatelessWidget {
  final Data Details;

  Call(this.Details);

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
          subtitle: Text('Yesterday ${Details.Date}'),
          trailing: const Icon(Icons.phone_callback_sharp),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
