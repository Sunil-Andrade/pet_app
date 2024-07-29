import 'package:flutter/material.dart';
import 'package:pet_app/animal/widgets/anidetcontain.dart';
import 'package:pet_app/models/new_pet.dart';

class ScrollabelInfo extends StatelessWidget {
  ScrollabelInfo({super.key, required this.pet});

  final NewPet pet;
  String sexx = "";

  @override
  Widget build(BuildContext context) {
    final sex = pet.sex.toString();

    if (sex == "Sex.male") {
      sexx = "Male";
    } else {
      sexx = "Female";
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: SizedBox(
        height: 90, // Adjust the height as needed
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 1, // Replace with actual item count
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Row(
                children: [
                  AniContainer(
                    title: "Sex",
                    data: sexx,
                  ),
                  AniContainer(
                    title: "Age",
                    data: " ${pet.age.toString()} Year",
                  ),
                  AniContainer(
                    title: "Breed",
                    data: pet.breed,
                  ),
                  AniContainer(
                    title: "Weight",
                    data: pet.weight.toString(),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
