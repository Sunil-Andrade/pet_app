import 'package:flutter/material.dart';

import 'package:pet_app/models/new_pet.dart';

class Animal extends StatefulWidget {
  const Animal({super.key, required this.index, required this.pet});

  final int index;
  final List<NewPet> pet;

  @override
  State<Animal> createState() => _AnimalState();
}

class _AnimalState extends State<Animal> {
  @override
  Widget build(BuildContext context) {
    final _index = widget.index;
    final _pet = widget.pet;

    final String sex = _pet[_index].sex.toString();
    bool isMale = false;

    if (sex == "Sex.male") {
      setState(() {
        isMale = true;
      });
    }

    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Hero(
              tag: _pet[_index],
              child: Image.network(
                _pet[_index].image,
                fit: BoxFit.cover,
                height: 140,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.pet[widget.index].name,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Spacer(),
                      Text(
                        "\$${_pet[_index].price.toString()}",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    //row for breed
                    children: [
                      Text(
                        "Breed:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black12),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        _pet[_index].breed,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 3,
                        color: isMale
                            ? const Color.fromARGB(255, 197, 223, 245)
                            : const Color.fromARGB(255, 250, 198, 215),
                        child: SizedBox(
                          height: 30,
                          width: 60,
                          child: Center(
                            child: Text(isMale ? "Male" : "Female"),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 3,
                        child: SizedBox(
                          height: 30,
                          width: 60,
                          child: Center(
                            child: Text("${_pet[_index].age} Year"),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
