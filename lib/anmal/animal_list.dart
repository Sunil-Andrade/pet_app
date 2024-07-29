import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_app/anmal/animal.dart';
import 'package:pet_app/data/animals_data.dart';
import 'package:pet_app/data/species_info.dart';

// import 'package:pet_app/provider/scrollprovider.dart';

import 'package:pet_app/provider/species_provider.dart';
import 'package:pet_app/animal/animal_detail.dart';

class AnimalList extends ConsumerWidget {
  AnimalList({
    super.key,
  });

  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final speciesAnimalIndex = ref.watch(selectedIndexProvider);
    // final scrollController = ref.watch(scrollControllerProvider);

    if (_controller.hasClients) {
      _controller.jumpTo(0.0);
    }

    final newPet = animalName
        .where((element) =>
            element.speciesAnimal ==
            animalList[speciesAnimalIndex].speciesAnimal)
        .toList();

    final String name =
        animalList[speciesAnimalIndex].speciesAnimal.toString().split('.').last;

    final String animalAsString =
        name[0].toUpperCase() + name.substring(1).toLowerCase();

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "${newPet.length} $animalAsString Found",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                controller: _controller,
                itemCount: newPet.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.1 / 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 15,
                ),
                itemBuilder: (ctx, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => AnimalDetail(pet: newPet[index]),
                      ),
                    );
                  },
                  child: Animal(
                    index: index,
                    pet: newPet,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
