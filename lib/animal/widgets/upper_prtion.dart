import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class UpperPrtion extends StatelessWidget {
  const UpperPrtion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 36, 31, 36),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(
                child: Icon(
                  Iconsax.arrow_left_2_copy,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Center(
              child: Icon(
                Iconsax.more_copy,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
