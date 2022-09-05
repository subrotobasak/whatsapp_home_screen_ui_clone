import 'package:flutter/material.dart';
import 'package:whatsapp_home_screen_ui_clone/custom_ui/chat_page_custom_card.dart';
import 'package:whatsapp_home_screen_ui_clone/model/chat_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: 'Weekend',
        image: 'assets/smilingwithsungless.png',
        time: '9:49',
        isGroup: false,
        isTyping: false,
        isUnreadMessage: true,
        ismessagedelivered: false,
        currentMessage: 'Sofia: 😁 Sticker'),
    ChatModel(
        name: 'João Pereira',
        image: 'assets/joaopereira.jpg',
        time: '9:49',
        isGroup: false,
        isTyping: true,
        isUnreadMessage: false,
        ismessagedelivered: false,
        currentMessage: 'typing...'),
    ChatModel(
        name: 'Isabelle van Rijn',
        image: 'assets/isabellevanrijn.jpeg',
        time: '9:45',
        isGroup: false,
        isTyping: false,
        isUnreadMessage: false,
        ismessagedelivered: false,
        currentMessage: 'Best breakfast ever'),
    ChatModel(
        name: 'Family',
        image: 'assets/fmaily.jpg',
        time: '9:09',
        isGroup: false,
        isTyping: false,
        isUnreadMessage: false,
        ismessagedelivered: false,
        currentMessage: 'Mom: She is so cute 😍'),
    ChatModel(
        name: 'Alicia Garcia',
        image: 'assets/aliciagarcia.jpg',
        time: '8:58',
        isGroup: false,
        isTyping: false,
        isUnreadMessage: false,
        ismessagedelivered: true,
        currentMessage: 'It was great to see you! Let\'s...'),
    ChatModel(
        name: 'Lunch club!',
        image: 'groups.svg',
        time: '8:33',
        isGroup: true,
        isTyping: false,
        isUnreadMessage: false,
        ismessagedelivered: false,
        currentMessage: 'Dominic Schwarz: GIF'),
    ChatModel(
        name: 'Sandra' 's Cakes',
        image: 'assets/cake.jpg',
        time: '8:10',
        isGroup: false,
        isTyping: false,
        isUnreadMessage: false,
        ismessagedelivered: false,
        currentMessage: 'It will be ready on Thursday!'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 10, 189, 4),
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) => CustomCard(chatModel: chats[index])),
    );
  }
}
