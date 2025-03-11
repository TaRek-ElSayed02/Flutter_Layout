import 'package:flutter/material.dart';
import 'chats.dart';
import 'user_avatar.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  String truncateName(String name, int maxLength) {
    return name.length > maxLength ? '${name.substring(0, maxLength)}...' : name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_640.png"),
            ),
            const SizedBox(width: 10),
            const Text(
              "Chats",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
            ),
          ),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 5),
                    Text("Search"),
                  ],
                ),
              ),
              const SizedBox(height: 15),

              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemCount: Chats.chatsList.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        UserAvatar(name: Chats.chatsList[index]["name"]!.trim()),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // Chats List (without Expanded, since it's now part of the SingleChildScrollView)
              Chats(),
            ],
          ),
        ),
      ),
    );
  }
}