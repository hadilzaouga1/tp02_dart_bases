void main() {
  String? surnom;
  String? email = 'ahmed@iset.tn';

  // TODO 1
  print(surnom ?? 'Aucun surnom');

  // TODO 2
  print(email?.length);

  // TODO 3
  surnom = 'hadil';
  print(surnom ?? 'Aucun surnom');
  // TODO 4 : décommenter pour voir l'erreur, puis commenter
  // String? vide;
  // print(vide!.length); // Erreur volontaire : null check operator used on a null value

  print(decrire(null));
  print(decrire('Ahmed'));
}

// Dart interdit null par défaut pour éviter les erreurs d'exécution et forcer le developpeur à gérer explicitement l'absence de valeur.
// TODO 5
String decrire(String? nom) {
  return 'Bonjour ${nom ?? 'visiteur'}';
}
