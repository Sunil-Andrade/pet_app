import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pet_app/navbar/navbar.dart';
import 'package:pet_app/onboarding/widgets/ob_container.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

PageController _controller = PageController();
int index = 0;

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          alignment: const Alignment(0.3, 0),
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(260),
                  topRight: Radius.circular(80))),
        ),
        PageView(
          controller: _controller,
          onPageChanged: (value) {
            setState(() {
              index = value;
            });
          },
          children: const [
            ObContainer(
              image: 'assets/images/dog.png',
              title: 'Make a New\nFriend',
              description:
                  'Discover the joys and companionship of\nhaving a pet.',
            ),
            ObContainer(
              image: 'assets/images/profile.png',
              title: 'Set Up Your Pets\nProfile',
              description:
                  "Create a profile for your pet to start enjoying all the benefits of pet ownership.",
            ),
            ObContainer(
              image: 'assets/images/petfood.png',
              title: 'Shop for Your Pets Needs',
              description:
                  "Find the best products to keep your pet happy and healthy.",
            ),
            ObContainer(
              image: 'assets/images/message.png',
              title: 'Connect and Share',
              description:
                  "Join a community of pet lovers and share joyful moments.",
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(12),
          alignment: const Alignment(0, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  _controller.jumpToPage(3);
                },
                child: Text(
                  "Skip",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  index == 3
                      ? Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => const NavBar()))
                      : _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear);
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 16, 0),
                  height: 70,
                  width: 160,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(233, 99, 197, 164),
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Next",
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CircularPercentIndicator(
                        radius: 25,
                        lineWidth: 2,
                        animation: true,
                        percent: (index * 3) / 9,
                        backgroundColor: Colors.grey,
                        progressColor: Colors.white,
                        center: const Icon(
                          Iconsax.arrow_right_3_copy,
                          size: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
