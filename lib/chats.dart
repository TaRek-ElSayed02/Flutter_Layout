import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  static const List<Map<String, String>> chatsList = [
    {"name": "Alamir Mansour", "message": "My name is Alamir Mansour", "time": "10:00 pm"},
    {"name": "Adham Ahmed ", "message": "My name is Adam Ahmed", "time": "03:00 am"},
    {"name": "Ahmed Ali", "message": "My name is Ahmed", "time": "02:00 am"},
    {"name": "Ali Ibrahim", "message": "My name is Mohamed", "time": "01:00 am"},
    {"name": "Anas Taha", "message": "My name is Anas", "time": "12:00 am"},
    {"name": "Sara ElSayed", "message": "My name is Sara", "time": "11:00 am"},
    {"name": "Tarek ElSayed ", "message": "My name is Tarek ElSayed", "time": "03:50 am"},
    {"name": "Hossam Ali", "message": "My name is Hossam Ali", "time": "02:40 am"},
    {"name": "Mossa Taha", "message": "My name is Mossa Taha", "time": "01:00 am"},
    {"name": "Anas Mohy", "message": "My name is Anas Mohy", "time": "12:00 am"},
    {"name": "Ziad Slama", "message": "My name is Ziad Slama", "time": "11:00 am"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(), // Disable independent scrolling
      shrinkWrap: true, // Ensure it takes only the space it needs
      itemCount: chatsList.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_640.png"),
          ),
          title: Text(
            chatsList[index]["name"]!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(chatsList[index]["message"]!),
          trailing: Text(chatsList[index]["time"]!),
        );
      },
    );
  }
}