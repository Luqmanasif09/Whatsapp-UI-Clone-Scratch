import 'package:flutter/material.dart';

class ChatRoom extends StatelessWidget {
  static const routename = "/Chatroom";
  @override
  Widget build(BuildContext context) {
    final Name = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(Name),
        backgroundColor: Color.fromRGBO(7, 94, 81, 1),
        actions: [
          const Icon(Icons.video_call),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(17),
          ),
          const Icon(Icons.call),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(10),
          ),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (ctx) => [
              const PopupMenuItem(
                child: Text('View contact'),
              ),
              const PopupMenuItem(
                child: Text('Media,Link and docs'),
              ),
              const PopupMenuItem(
                child: Text('Search'),
              ),
              const PopupMenuItem(
                child: Text('Muted notification'),
              ),
              const PopupMenuItem(
                child: Text('Wallpaper'),
              ),
              const PopupMenuItem(
                child: Text('More'),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                color: Colors.grey[500],
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: 8.0),
                    const Icon(Icons.insert_emoticon,
                        size: 30.0, color: Colors.amber),
                    const SizedBox(width: 8.0),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type a message',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    IconButton(
                      icon: Icon(Icons.attach_file,
                          size: 30.0, color: Theme.of(context).hintColor),
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (builder) => BottomSheet(context),
                        );
                      },
                    ),
                    const SizedBox(width: 8.0),
                    Icon(Icons.camera_alt,
                        size: 30.0, color: Theme.of(context).hintColor),
                    const SizedBox(width: 8.0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget BottomSheet(BuildContext context) {
    return Container(
      height: 270,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: EdgeInsets.all(18),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Card(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon_Sheet(
                        Icons.insert_drive_file, Colors.indigo, "Documents"),
                    const SizedBox(
                      width: 32,
                    ),
                    Icon_Sheet(Icons.camera_alt, Colors.pink, "Camera"),
                    const SizedBox(
                      width: 40,
                    ),
                    Icon_Sheet(Icons.insert_photo, Colors.indigo, "Gallery"),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon_Sheet(Icons.headset, Colors.orange, "Audio"),
                    const SizedBox(
                      width: 40,
                    ),
                    Icon_Sheet(Icons.location_pin, Colors.pink, "location"),
                    const SizedBox(
                      width: 40,
                    ),
                    Icon_Sheet(Icons.person, Colors.blue, "Contact"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Icon_Sheet(IconData icon, Color Col, String txt) {
    return InkWell(
      onTap: () {},
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CircleAvatar(
            backgroundColor: Col,
            radius: 30,
            child: Icon(
              icon,
              size: 29,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            txt,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
