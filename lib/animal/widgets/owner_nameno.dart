import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class OwnerNameno extends StatelessWidget {
  const OwnerNameno({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/profile.png"),
        ),
        SizedBox(
          width: 14,
        ),
        Column(
          children: [
            Text(
              "Mr.John",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Pet's Owner",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Spacer(),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 236, 215, 209),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Center(
              child: Icon(
                Iconsax.call,
                color: Color.fromARGB(142, 244, 67, 54),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Color.fromARGB(206, 202, 227, 238),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Center(
              child: Icon(
                Iconsax.messages,
                color: Color.fromARGB(255, 159, 196, 226),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
