class Candidate {
  String name;
  String prenom;
  String cv;
  String email;
  String? letter;
  Candidate(
      {required this.name,
      required this.prenom,
      required this.cv,
      required this.email,
      this.letter});
}
