import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_app/anmal/animal_list.dart';
import 'package:pet_app/home/offers.dart';
import 'package:pet_app/anmal/species_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //offers
              Offers(),
              SizedBox(
                height: 20,
              ),
              //animal species
              SpeciesList(),
              SizedBox(
                height: 35,
              ),
              //selected animal list
              AnimalList(
               
              ),
            ],
          ),
        ),
      )),
    );
  }
}
