import 'package:flutter/material.dart';

class ProfessionalChatScreen extends StatelessWidget {
  ProfessionalChatScreen({super.key});

  final List<Map<String, dynamic>> messages = [
    {'sender': 'Joe', 'message': '', 'isMe': true, 'time': '4:57 PM'},
    {'sender': 'Susan', 'message': '', 'isMe': false, 'time': '4:57 PM'},
    {'sender': 'Shirley', 'message': '', 'isMe': true, 'time': '4:57 PM'},
    {'sender': 'Joe', 'message': '', 'isMe': true, 'time': '4:57 PM'},
    {'sender': 'Joe', 'message': '', 'isMe': true, 'time': '4:57 PM'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.blueAccent),
          onPressed: () {},
        ),
        title: const Text(
          'Mrs Nkechi Akuchinyere',
          style:
              TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.call, color: Colors.blueAccent),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                final isMe = message['isMe'];
                return ChatBubble(
                  sender: message['sender'],
                  message: message['message'],
                  time: message['time'],
                  isMe: isMe,
                );
              },
            ),
          ),
          _buildMessageInputField(),
        ],
      ),
    );
  }

  Widget _buildMessageInputField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.mic, color: Colors.grey),
            onPressed: () {},
          ),
          Expanded(
            child: SizedBox(
              height: 60, // Increase this value to change the height
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type a message',
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10.0),
                  // Adjust vertical padding
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.insert_emoticon, color: Colors.grey),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_circle_outline, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String sender;
  final String message;
  final String time;
  final bool isMe;

  const ChatBubble({
    required this.sender,
    required this.message,
    required this.time,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            time,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          Row(
            mainAxisAlignment:
                isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              if (!isMe) CircleAvatar(child: Text(sender[0])),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  color: isMe ? Colors.blue[100] : Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(20.0),
                constraints: const BoxConstraints(
                  maxWidth:
                      1000, // Increased max width to make the chat bubble wider
                  minHeight: 20, // Set a minimum height for larger chat boxes
                ), // Increased padding
                child: Text(
                  message,
                  style: TextStyle(
                      color: isMe ? Colors.black : Colors.black, fontSize: 16),
                ),
              ),
              const SizedBox(width: 10),
              if (isMe) CircleAvatar(child: Text(sender[0])),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
