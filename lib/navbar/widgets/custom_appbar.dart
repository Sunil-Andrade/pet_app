import 'package:flutter/material.dart';

import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:pet_app/onboarding/onboarding.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppbar({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    Widget content = Text("");
    if (index == 0) {
      content = GestureDetector(
          //to diplay adress colum
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              //display button
              Text(
                'Location',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Iconsax.arrow_down_1_copy,
                size: 12,
              )
            ],
          ),
          //to diplay adress
          Text(
            "Adress",
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ));
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //to open menu(drawer)
                  GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: const Icon(Iconsax.menu),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    //to make it clickable
                    child: content,
                  ),
                  const Spacer(),
                  index == 0
                      ? GestureDetector(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Iconsax.setting_4_copy,
                            ),
                          ),
                        )
                      : Text(""),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  //to implement prederredsize widher
  Size get preferredSize => const Size(double.infinity, 80);
}
