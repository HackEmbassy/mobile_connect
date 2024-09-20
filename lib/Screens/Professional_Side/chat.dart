import 'package:flutter/material.dart';

class ProfessionalChatScreen extends StatelessWidget {
  const ProfessionalChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mrs Nkechi Akuchinyere'),
        actions: [
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {
              // Handle phone call action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // List of chat messages
                _buildChatMessage('Joe', '4:57 PM', false),
                _buildChatMessage('Susan', '4:57 PM', false),
                _buildChatMessage('Shirley', '4:57 PM', true),
                _buildChatMessage('Shirley', '4:57 PM', true),
                _buildChatMessage('Joe', '4:57 PM', false),
                _buildChatMessage('Joe', '4:57 PM', false),
              ],
            ),
          ),
          // Message input area
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.mic),
                onPressed: () {
                  // Handle voice input
                },
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: 'Type your message...'),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.emoji_emotions),
                onPressed: () {
                  // Handle emoji selection
                },
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  // Handle attachment selection
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChatMessage(String sender, String time, bool isSentByMe) {
    return ListTile(
      leading: CircleAvatar(child: Text(sender[0])),
      title: Text(sender),
      subtitle: Text(time),
      trailing: isSentByMe ? const Icon(Icons.check) : null,
    );
  }
}