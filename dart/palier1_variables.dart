void main() {
  // TODO 1
  String nom = 'Ahmed';
  int age = 22;
  double moyenne = 14.75;
  bool inscrit = true;

  // TODO 2
  const tva = 0.19;
  final anneeCourante = DateTime.now().year;

  // TODO 3
  print('Je m\'appelle $nom, j\'ai $age ans.');

  // TODO 4
  print('Moyenne : ${moyenne.toStringAsFixed(2)}');

  // TODO 5 : tva = 0.20; // erreur volontaire
  // final = valeur fixée une seule fois à l'exécution.
  // const = valeur connue dès la compilation.
}
