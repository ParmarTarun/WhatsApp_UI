import './user.dart';

class Message {
  final User sender;
  final String text;
  final String time;
  final bool unread;

  Message({this.sender, this.text, this.time, this.unread});

  //myself
  static final User currentUser =
      User(id: 0, name: 'Current user', imageUrl: 'assets/images/dp.jpg');

  //other users
  static final User jon =
      User(id: 1, name: 'Jon', imageUrl: 'assets/images/Jon.jpg');
  static final User daenerys =
      User(id: 2, name: 'Daenerys', imageUrl: 'assets/images/Daenerys.jpeg');
  static final User tyrion =
      User(id: 3, name: 'Tyrion', imageUrl: 'assets/images/Tyrion.jpg');
  static final User cersie =
      User(id: 4, name: 'Cersie', imageUrl: 'assets/images/Cersie.jpg');
  static final User bran =
      User(id: 5, name: 'Bran', imageUrl: 'assets/images/Bran.png');
  static final User arya =
      User(id: 6, name: 'Arya', imageUrl: 'assets/images/Arya.jpeg');
  static final User jaime =
      User(id: 7, name: 'Jaime', imageUrl: 'assets/images/Jamie.jpg');
  static final User sandor =
      User(id: 8, name: 'Sandor', imageUrl: 'assets/images/Sandor.jpg');

  //messages
  static List<Message> chats = [
    Message(sender: jon, time: "now", text: "I don't want it", unread: false),
    Message(sender: daenerys, time: "now", text: "bend the knee", unread: true),
    Message(
        sender: tyrion,
        time: "5:03",
        text: "I drink and I know things",
        unread: false),
    Message(
        sender: cersie,
        time: "9:10",
        text: "Everyone but us is the enemy",
        unread: false),
    Message(
        sender: bran,
        time: "Yesterday",
        text: "Jon's real name is Aegon Targerian",
        unread: true),
    Message(
        sender: arya,
        time: "20/04/2020",
        text: "A girl is Arya Stark of winterfell and i'm going home",
        unread: false),
    Message(
        sender: jaime,
        time: "21/04/2020",
        text: "Things i do for love",
        unread: true),
    Message(
        sender: sandor, time: "21/04/2020", text: "F*#k the king", unread: true),
  ];
}
