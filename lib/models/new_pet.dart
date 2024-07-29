import 'package:pet_app/models/species_model.dart';

enum Sex {
  male,
  female,
}

class NewPet {
  const NewPet({
    required this.name,
    required this.image,
    required this.breed,
    required this.age,
    required this.price,
    required this.weight,
    required this.sex,
    required this.speciesAnimal,
    required this.address,
  });
  final String name;
  final String breed;
  final String image;
  final int age;
  final String? address;
  final int price;
  final int weight;
  final Sex sex;
  final SpeciesAnimal speciesAnimal;
}
