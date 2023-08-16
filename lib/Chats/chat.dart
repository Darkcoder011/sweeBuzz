import 'package:flutter/material.dart';



class Message {
  final String sender;
  final String message;
  final String time;

  Message({
    required this.sender,
    required this.message,
    required this.time,
  });
}

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MessagePage(),
    );
  }
}

class MessagePage extends StatelessWidget {
  final List<Message> messages = [
    Message(sender: 'User 1', message: 'Hello!', time: '10:00 AM'),
    Message(sender: 'User 2', message: 'Hi there!', time: '10:05 AM'),
    // Add more messages here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300], // Gray background
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.orange, // Orange background for sender avatar
              backgroundImage: AssetImage('assets/user_image.png'), // Replace with actual user image
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('User Name', style: TextStyle(fontSize: 16)),
                Text('Active now', style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return Align(
            alignment: message.sender == 'User 1' ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: message.sender == 'User 1' ? Colors.orange[200] : Colors.grey[300],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(message.sender, style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text(message.message),
                  SizedBox(height: 4),
                  Text(message.time, style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
