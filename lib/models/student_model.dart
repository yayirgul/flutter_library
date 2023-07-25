class Students {
  late final int id;
  late final String name;
  late final String surname;

  Students(this.id, this.name, this.surname);

  @override
  String toString() {
    return 'ID : $id - Adı : $name - Soyadı : $surname';
  }
}
