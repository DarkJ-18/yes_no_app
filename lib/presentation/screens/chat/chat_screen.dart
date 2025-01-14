import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://img.freepik.com/fotos-premium/dia-fotografia_1087840-13703.jpg?w=740'),
          ),
        ),
        title: const Text('Mi amor ❤️'),
        centerTitle: false, // default is true (centered)
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 10,
              itemBuilder:(context, index) {
              return const MyMessageBubble();
              })),
          ],
        ),
      ),
    );
  }
}