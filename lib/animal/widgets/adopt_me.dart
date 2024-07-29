import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class AdoptMe extends StatelessWidget {
  const AdoptMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        alignment: Alignment.bottomCenter,
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 57, 41, 65),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 76, 69, 92),
                      borderRadius: BorderRadius.circular(60)),
                  child: Center(
                    child: Icon(
                      Iconsax.heart,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  child: Container(
                    height: 60,
                    width: 260,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(233, 99, 197, 164),
                        borderRadius: BorderRadius.circular(24)),
                    child: Center(
                      child: Text(
                        "Adopt Me",
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
