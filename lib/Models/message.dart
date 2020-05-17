import './user.dart';

class Message {
  final User sender;
  final String text;
  final String time;
  final bool unread;

  Message({this.sender, this.text, this.time, this.unread});

  //messages
  static List<Message> chats = [
    Message(
        sender: User.jon, time: "now", text: "I don't want it", unread: false),
    Message(
        sender: User.daenerys,
        time: "now",
        text: "bend the knee",
        unread: true),
    Message(
        sender: User.tyrion,
        time: "5:03",
        text: "I drink and I know things",
        unread: false),
    Message(
        sender: User.cersie,
        time: "9:10",
        text: "Everyone but us is the enemy",
        unread: false),
    Message(
        sender: User.bran,
        time: "Yesterday",
        text: "Jon's real name is Aegon Targerian",
        unread: true),
    Message(
        sender: User.arya,
        time: "20/04/2020",
        text: "A girl is Arya Stark of winterfell and i'm going home",
        unread: false),
    Message(
        sender: User.jaime,
        time: "21/04/2020",
        text: "Things i do for love",
        unread: true),
    Message(
        sender: User.sandor,
        time: "21/04/2020",
        text: "F*#k the king",
        unread: true),
  ];
}
