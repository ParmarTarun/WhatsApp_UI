import './user.dart';

class Status {
  final User user;
  final String time;
  final List post;
  final bool seen;

  Status({this.user, this.time, this.post, this.seen});

  static List statuses = [
    Status(
      user: User.daenerys,
      time: "56 seconds ago",
      post: [{"path":"assets/images/daenerys1.jpg","caption":"Learning to Dracarys!"}],
      seen: false
    ),
    Status(
      user: User.bran,
      time: "1 minute ago",
      post: [{"path":"assets/images/bran1.jpg","caption":"I can't be lord of anything but king, yeah!"}],
      seen: false
    ),
    Status(
      user: User.arya,
      time: "2 minutes ago",
      post: [{"path":"assets/images/arya1.jpg","caption":"East of Essos, Ahh! I'm back to west."}],
      seen: true
    ),
    Status(
      user: User.cersie,
      time: "5 hours ago",
      post: [{"path":"assets/images/cersie1.jpg","caption":"All I wanted were some elephants."}],
      seen: true
    ),
    Status(
      user: User.sandor,
      time: "Yesterday",
      post: [{"path":"assets/images/sandor1.jpg","caption":"Fuck Off!"}],
      seen: true
    ),
  ];
  
}