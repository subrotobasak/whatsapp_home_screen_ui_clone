import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_home_screen_ui_clone/model/chat_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            leading: chatModel.isGroup
                ? CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blueGrey,
                    child: SvgPicture.asset(
                      "assets/groups.svg",
                      color: Colors.white,
                      height: 36,
                      width: 36,
                    ),
                  )
                : CircleAvatar(
                    backgroundImage: Image.asset(
                      chatModel.image,
                      height: 36,
                      width: 36,
                    ).image,
                    backgroundColor: Colors.transparent,
                    radius: 30,
                  ),
            title: Text(
              chatModel.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                chatModel.ismessagedelivered
                    ? const Icon(
                        Icons.done_all_outlined,
                        size: 20,
                        color: Colors.blue,
                      )
                    : const Text(''),
                chatModel.isTyping
                    ? Text(
                        chatModel.currentMessage,
                        style: const TextStyle(
                            fontSize: 14, color: Color(0xff25d366)),
                      )
                    : Text(
                        chatModel.currentMessage,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
              ],
            ),
            trailing: chatModel.isUnreadMessage
                ? Column(
                    children: [
                      Text(chatModel.time,
                          style: const TextStyle(color: Color(0xff25d366))),
                      const CircleAvatar(
                        backgroundColor: Color(0xff25d366),
                        radius: 10,
                        child: Text(
                          '2',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  )
                : Text(chatModel.time)),
        const Padding(
          padding: EdgeInsets.only(right: 20, left: 80),
          child: Divider(
            thickness: 1,
          ),
        )
      ],
    );
  }
}
