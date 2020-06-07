class User {
  final int id;
  final String name;
  final String status;
  final String imageUrl;

  User({this.id, this.name,this.status, this.imageUrl});

//myself
  static final User currentUser =
      User(id: 0, name: 'George R.R',status:"Author", imageUrl: 'assets/images/dp.jpg');

  //other users
  static final User jon =
      User(id: 1, name: 'Jon',status:"The True Heir", imageUrl: 'assets/images/Jon.jpg');
  static final User daenerys =
      User(id: 2, name: 'Daenerys',status:"I will take what's mine", imageUrl: 'assets/images/Daenerys.jpeg');
  static final User tyrion =
      User(id: 3, name: 'Tyrion', status:"God of wine",imageUrl: 'assets/images/Tyrion.jpg');
  static final User cersie =
      User(id: 4, name: 'Cersie',status:"Queen of the seven kingdoms", imageUrl: 'assets/images/Cersie.jpg');
  static final User bran =
      User(id: 5, name: 'Bran',status:"I'm the three eyed Raven", imageUrl: 'assets/images/Bran.png');
  static final User arya =
      User(id: 6, name: 'Arya', status:"No One",imageUrl: 'assets/images/Arya.jpeg');
  static final User jaime =
      User(id: 7, name: 'Jaime',status:"Kingslayer", imageUrl: 'assets/images/Jamie.jpg');
  static final User sandor =
      User(id: 8, name: 'Sandor',status:"Fuck Off!", imageUrl: 'assets/images/Sandor.jpg');
}
