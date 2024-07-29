import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:pet_app/favroite/favorite.dart';
import 'package:pet_app/home/home_screen.dart';
import 'package:pet_app/message/message.dart';
import 'package:pet_app/onboarding/onboarding.dart';
import 'package:pet_app/profile/profile.dart';
import 'package:pet_app/search/search.dart';
import 'package:pet_app/navbar/widgets/custom_appbar.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var _index = 0;

  final List<Widget> _selectedScreen = [
    const HomeScreen(),
    const Search(),
    const Favorite(),
    const Message(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = _selectedScreen[_index];

    return Scaffold(
      appBar: CustomAppbar(
        index: _index,
      ),
      drawer: const Drawer(),
      body: currentScreen,
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: CrystalNavigationBar(
            currentIndex: _index,
            height: 10,
            // indicatorColor: Colors.blue,
            unselectedItemColor: Colors.white70,
            backgroundColor: Theme.of(context).colorScheme.onSurface,
            onTap: (value) {
              setState(() {
                _index = value;
              });
            },
            items: [
              /// Home
              CrystalNavigationBarItem(
                icon: Iconsax.home_2,
                unselectedIcon: Iconsax.home_2_copy,
                selectedColor: Colors.white,
              ),

              //search
              CrystalNavigationBarItem(
                  icon: Iconsax.search_normal_1,
                  unselectedIcon: Iconsax.search_normal_1_copy,
                  selectedColor: Colors.white),

              /// Favourite
              CrystalNavigationBarItem(
                icon: Iconsax.heart,
                unselectedIcon: Iconsax.heart_copy,
                selectedColor: Colors.white,
              ),

              /// message
              CrystalNavigationBarItem(
                icon: Iconsax.message,
                unselectedIcon: Iconsax.message_copy,
                selectedColor: Colors.white,
              ),

              /// Profile
              CrystalNavigationBarItem(
                icon: Iconsax.profile_circle,
                unselectedIcon: Iconsax.profile_circle_copy,
                selectedColor: Colors.white,
              ),
            ],
          )),
    );
  }
}
