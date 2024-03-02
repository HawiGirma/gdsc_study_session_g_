import 'package:flutter/material.dart';
import 'package:todo/pages/Secondscreen.dart';
class Firstscreen extends StatefulWidget {
  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      const Image(
        image: AssetImage(
          'images/tempsnip.png',
        ),
      ),
      const Padding(padding: EdgeInsets.symmetric(vertical: 70.0)),
      Row(children: [
        const Padding(padding: EdgeInsets.symmetric(horizontal: 15.0)),
        Container(
          height: 40,
          width: 250,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 71, 125, 206),
              borderRadius: BorderRadius.circular(7)),
          child: TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Secondscreen()));
            },
            child: const Text('Get Started',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ),
        )
      ])
    ]));
  }
}
