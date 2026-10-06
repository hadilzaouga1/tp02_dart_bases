void main() {
  final cours = [
    Cours(nom: 'Maths', coefficient: 3, note: 15.0),
    Cours(nom: 'Physique', coefficient: 2, note: 12.0),
    Cours(nom: 'Info', coefficient: 4, note: 17.0),
    Cours(nom: 'Anglais', coefficient: 1, note: 9.0),
  ];

  // Moyenne pondérée
  double sommeNotesPonderees = 0;
  int sommeCoefficients = 0;
  for (var c in cours) {
    sommeNotesPonderees += c.note * c.coefficient;
    sommeCoefficients += c.coefficient;
  }
  final moyennePonderee = sommeNotesPonderees / sommeCoefficients;
  print('Moyenne pondérée : ${moyennePonderee.toStringAsFixed(2)}');

  // Meilleure note
  var meilleur = cours[0];
  for (var c in cours) {
    if (c.note > meilleur.note) meilleur = c;
  }
  print('Meilleur cours : ${meilleur.nom} (${meilleur.note})');
}

class Cours {
  final String nom;
  final int coefficient;
  final double note;

  Cours({required this.nom, required this.coefficient, required this.note});

  @override
  String toString() => '$nom (coef $coefficient) : $note';
}
