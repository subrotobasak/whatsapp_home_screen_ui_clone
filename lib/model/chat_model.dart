class ChatModel {
  late String name;
  late String image;
  late String time;
  late bool isGroup;
  late bool isTyping;
  late bool isUnreadMessage;
  late bool ismessagedelivered;
  late String currentMessage;

  ChatModel(
      {required this.name,
      required this.image,
      required this.time,
      required this.isGroup,
      required this.isTyping,
      required this.isUnreadMessage,
      required this.ismessagedelivered,
      required this.currentMessage,
      });
}
