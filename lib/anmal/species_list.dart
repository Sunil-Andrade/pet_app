import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_app/anmal/species.dart';
import 'package:pet_app/data/species_info.dart';
import 'package:pet_app/provider/scrollprovider.dart';

import 'package:pet_app/provider/species_provider.dart';

class SpeciesList extends ConsumerStatefulWidget {
  const SpeciesList({super.key});

  @override
  ConsumerState<SpeciesList> createState() => _SpeciesListState();
}

class _SpeciesListState extends ConsumerState<SpeciesList> {
  void _categorySpecies(int index) {
    ref.read(selectedIndexProvider.notifier).updateIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(selectedIndexProvider);
    final scrollController = ref.watch(scrollControllerProvider);

    return Container(
      height: 120,
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: animalList.length,
        itemBuilder: (ctx, index) => Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  _categorySpecies(index);
                },
                child: Species(
                  index: index,
                  selectedIndex: selectedIndex,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
