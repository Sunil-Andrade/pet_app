import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class OwnerAdrss extends StatelessWidget {
  const OwnerAdrss({super.key});

 final String content =
      "Hello myself an engineer building apps this is my pet app.I saw this desgin on the internet now i am building it. I took nearly 4 days to complete this much how much you can seee now we bw a fake deatils now it hd ac ab tv car bus airplane hd hgg yia bN Lmanhdh";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: SingleChildScrollView(
        child: ReadMoreText(
          content,
          trimLines: 3,
          trimCollapsedText: 'Read More',
          trimExpandedText: 'Read Less',
          trimMode: TrimMode.Line,
          moreStyle: TextStyle(color: const Color.fromARGB(255, 79, 150, 82)),
          style: TextStyle(
              fontSize: 18,
              color: Colors.grey[500],
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
