enum SpeciesAnimal {
  cat,
  dog,
  birds,
  fish,
  horse,
  rabbit,
}

class SpeciesModel {
 const SpeciesModel({
    required this.title,
    required this.speciesAnimal,
    required this.animalImg
  });
  final String title;
  final SpeciesAnimal speciesAnimal;
  final String animalImg;
}
