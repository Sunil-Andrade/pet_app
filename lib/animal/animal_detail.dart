import 'package:flutter/material.dart';

import 'package:pet_app/animal/widgets/adopt_me.dart';
import 'package:pet_app/animal/widgets/name_adress.dart';
import 'package:pet_app/animal/widgets/owner_adrss.dart';
import 'package:pet_app/animal/widgets/owner_nameno.dart';
import 'package:pet_app/animal/widgets/scrollabel_info.dart';
import 'package:pet_app/animal/widgets/upper_prtion.dart';
import 'package:pet_app/models/new_pet.dart';

class AnimalDetail extends StatelessWidget {
  const AnimalDetail({super.key, required this.pet});

  final NewPet pet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: const Alignment(0, -1 / 1.8),
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  child: Image.network(
                    pet.image,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                //back button and more
                UpperPrtion(),
              ],
            ),
            const SizedBox(height: 20),
            //name adress
            NameAdress(pet: pet),
            const SizedBox(height: 20),
            //scrollable info
            ScrollabelInfo(pet: pet),
            const SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //owners details
                  OwnerNameno(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Details",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 36, 31, 36),
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //adress of owner
                  OwnerAdrss(),
                  SizedBox(
                    height: 15,
                  ),
                  //addopt me button and favorite
                  AdoptMe(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
