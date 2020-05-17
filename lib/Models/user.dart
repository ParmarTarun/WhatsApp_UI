class User {
  final int id;
  final String name;
  final String imageUrl;

  User({this.id, this.name, this.imageUrl});

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
}
