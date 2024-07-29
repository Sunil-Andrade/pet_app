import 'package:flutter/material.dart';
import 'package:pet_app/data/species_info.dart';

class Species extends StatefulWidget {
  const Species({
    super.key,
    required this.index,
    required this.selectedIndex,
  });

  final int index;
  final int selectedIndex;

  get speciesAnimal => null;

  @override
  State<Species> createState() => _SpeciesState();
}

class _SpeciesState extends State<Species> {
  @override
  Widget build(BuildContext context) {
    var selectedIndex = widget.selectedIndex;
    Widget shape = Container(
      height: 105,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              animalList[widget.index].animalImg,
              color: Colors.black,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            animalList[widget.index].title,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          )
        ],
      ),
    );

    if (selectedIndex == widget.index) {
      shape = Container(
        height: 115,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                animalList[widget.index].animalImg,
                color: Colors.teal,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              animalList[widget.index].title,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
            )
          ],
        ),
      );
    }
    return shape;
  }
}
