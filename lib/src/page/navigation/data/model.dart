class Model {
  final int id;
  final String imagePath;
  final String name;

  Model({
    required this.id,
    required this.imagePath,
    required this.name,
  });
}

List<Model> navBtn = [
  Model(id: 0, imagePath: 'assets/icon/home.png', name: 'Home'),
  Model(id: 1, imagePath: 'assets/icon/book.png', name: 'Book'),
  Model(id: 2, imagePath: 'assets/icon/qrc.png', name: 'Qr Code'),
  Model(id: 3, imagePath: 'assets/icon/mark.png', name: 'Mark'),
  Model(id: 4, imagePath: 'assets/icon/userid.png', name: 'Profile'),
];
