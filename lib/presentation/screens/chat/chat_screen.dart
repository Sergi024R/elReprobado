import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_ejemplo/domain/dtos/message.dart';
import 'package:yes_no_ejemplo/presentation/providers/chats/chat_provider.dart';
import 'package:yes_no_ejemplo/presentation/widgets/chat/message_bubble.dart';
import 'package:yes_no_ejemplo/presentation/widgets/shared/message_field_box.dart';
import 'package:yes_no_ejemplo/presentation/widgets/herBar/her_presentation.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HerPresentation(
        nombre: 'Messi',
        urlAvatar:
            'https://fcb-abj-pre.s3.amazonaws.com/img/jugadors/MESSI.jpg',
      ),
      body: ChatView(),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];
                  return (message.fromWho == FromWho.hers)
                      ? HerMessageBubble(
                          message: message.text, urlGif: message.imageUrl)
                      : MyMessageBubble(message: message.text);
                },
              ),
            ),
            MessageFieldBox(onValue: chatProvider.sendMessage),
          ],
        ),
      ),
    );
  }
}
