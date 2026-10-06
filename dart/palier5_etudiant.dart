void main() {
  final etudiants = [
    Etudiant(nom: 'Ahmed', moyenne: 14.5),
    Etudiant(nom: 'Sarra', moyenne: 9.0),
    Etudiant(nom: 'Youssef', moyenne: 12.0),
  ];

  // TODO 4 : afficher chaque étudiant (une boucle for)
  for (var e in etudiants) {
    print(e);
  }
  // TODO 5 : afficher uniquement les admis (moyenne >= 10)
  final admis = etudiants.where((e) => e.estAdmis).map((e) => e.nom).join(', ');
  print('Admis : $admis');
}

class Etudiant {
  // TODO 1 : déclarer final nom (String) et final moyenne (double)
  final String nom;
  final double moyenne;

  // TODO 2 : constructeur avec paramètres nommés obligatoires
  Etudiant({required this.nom, required this.moyenne});

  // TODO 3 : getter estAdmis qui renvoie true si moyenne >= 10
  bool get estAdmis => moyenne >= 10;

  // TODO 3 bis : redéfinir toString() pour renvoyer
  // 'Ahmed - 14.5 (admis)' ou 'Sarra - 9.0 (non admis)'
  @override
  String toString() {
    return '$nom - ${moyenne.toStringAsFixed(1)} (${estAdmis ? 'admis' : 'non admis'})';
  }
}
// les propriétés finales sont utiliser pour garantir l'immutabilité de l'objet et pour éviter les modifications accidentelles