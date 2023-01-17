import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/anil5.jpeg'),
            ),
            title: Text('Someone Else'),
            subtitle: Text('Hey Someone else ....'),
            trailing: Text('4:20 pm'),
          );
        },
      ),
    );
  }
}
