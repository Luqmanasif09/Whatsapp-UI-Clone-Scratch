import 'package:flutter/material.dart';

import 'Screen/chat_screen.dart';
import 'Screen/chat_room.dart';
import 'Screen/status_screen.dart';
import '/Widget/camera.dart';
import '/Screen/call_screen.dart';
import 'Screen/setting_screen.dart';

void main() {
  runApp(Whatsapp());
}

class Whatsapp extends StatefulWidget {
  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  String Routename = Setting.route_name;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(7, 98, 84, 1),
        indicatorColor: Colors.white,
        primaryIconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      routes: {
        ChatRoom.routename: (ctx) => ChatRoom(),
        Setting.route_name: (ctx) => Setting(),
      },
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            // ignore: prefer_const_constructors
            title: Text(
              "WhatsApp",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(Icons.search),
              ),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (ctx) => [
                  const PopupMenuItem(
                    child: Text('New group'),
                  ),
                  const PopupMenuItem(
                    child: Text('New Broadcast'),
                  ),
                  const PopupMenuItem(
                    child: Text('Linked devices'),
                  ),
                  const PopupMenuItem(
                    child: Text('Starred messages'),
                  ),
                  const PopupMenuItem(
                    child: Text('Settings'),
                  ),
                ],
                onSelected: (_) {
                  Navigator.of(context).pushNamed(Setting.route_name);
                },
              ),
            ],

            backgroundColor: const Color.fromRGBO(7, 98, 84, 1),
            // ignore: prefer_const_constructors
            bottom: TabBar(
              tabs: const [
                Icon(Icons.camera_alt),
                Text(
                  'CHATS',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'STATUS',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'CALLS',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          body: TabBarView(
            children: [
              Camera(),
              chat(),
              status(),
              Call_Screen(),
            ],
          ),
          // ignore: prefer_const_constructors
          floatingActionButton: FloatingActionButton(
            backgroundColor: const Color.fromRGBO(18, 140, 126, 1),
            child: const Icon(
              Icons.message,
            ),
            onPressed: null,
          ),
        ),
      ),
    );
  }
}
