void main() {
  List<int> notes = [12, 8, 15, 17, 9];

  // TODO 1 : ajouter la note 11 à la liste
  notes.add(11);

  // TODO 2 : afficher le nombre de notes (propriété length)
  print('Nombre de notes : ${notes.length}');

  // TODO 3 : afficher chaque note, une par ligne, avec une boucle for
  for (var n in notes) {
    print(n);
  }

  // TODO 4 : créer une liste des notes >= 10 avec where, puis l'afficher
  // indice : notes.where((n) => ...).toList()
  final notesAdmis = notes.where((n) => n >= 10).toList();
  print('Notes >= 10 : $notesAdmis');
  // TODO 5 : calculer et afficher la moyenne
  // indice : une boucle et une variable somme
  double somme = 0;
  for (var n in notes) {
    somme += n;
  }
  print('Moyenne : ${(somme / notes.length).toStringAsFixed(2)}');

  Map<String, int> ages = {'Ahmed': 22, 'Sarra': 21};

  // TODO 6 : ajouter 'Youssef' avec l'âge 23
  ages['Youssef'] = 23;

  // TODO 7 : parcourir la map et afficher 'Ahmed a 22 ans'
  // indice : ages.forEach((cle, valeur) { ... });
  ages.forEach((nom, age) {
    print('$nom a $age ans');
  });
}

//une liste est un ensemble ordonné et indexée par des entiers
// une map est un ensemnle de paires clé-valeur, sans ordre garanti
