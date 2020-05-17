import 'package:whatsapp_ui/Models/user.dart';

class Call {
  final User caller;
  final String time;
  final bool outgoing;
  final bool videoCall;

  Call({this.caller, this.time, this.outgoing, this.videoCall});

  static final List calls = [
    Call(
        caller: User.jon,
        time: "May 16, 18:01",
        outgoing: false,
        videoCall: false),
    Call(
        caller: User.bran,
        time: "May 14, 10:34",
        outgoing: false,
        videoCall: false),
    Call(
        caller: User.daenerys,
        time: "May 10, 13:31",
        outgoing: true,
        videoCall: false),
    Call(
        caller: User.cersie,
        time: "May 10, 12:56",
        outgoing: false,
        videoCall: false),
    Call(
        caller: User.sandor,
        time: "May 7, 20:00",
        outgoing: false,
        videoCall: true),
    Call(
        caller: User.jaime,
        time: "May 7, 12:12",
        outgoing: true,
        videoCall: false),
    Call(
        caller: User.arya,
        time: "May 2, 14:01",
        outgoing: false,
        videoCall: true),
  ];
}
