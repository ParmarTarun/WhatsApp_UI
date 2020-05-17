import './user.dart';

class Status {
  final User user;
  final String time;
  final List pictures;
  final bool seen;

  Status({this.user, this.time, this.pictures, this.seen});

  static List statuses = [
    Status(
      user: User.daenerys,
      time: "56 seconds ago",
      pictures: ["assets/images/daenerys1.jpg"],
      seen: false
    ),
    Status(
      user: User.bran,
      time: "1 minute ago",
      pictures: ["assets/images/bran1.jpg"],
      seen: false
    ),
    Status(
      user: User.arya,
      time: "2 minutes ago",
      pictures: ["assets/images/arya1.jpg"],
      seen: true
    ),
    Status(
      user: User.cersie,
      time: "5 hours ago",
      pictures: ["assets/images/cersie1.jpg"],
      seen: true
    ),
    Status(
      user: User.sandor,
      time: "Yesterday",
      pictures: ["assets/images/sandor1.jpg"],
      seen: true
    ),
  ];
  
}