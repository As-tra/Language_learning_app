import 'package:flutter/material.dart';
import 'package:samiversion/models/number.dart';
import 'package:samiversion/components/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> familyMembers = const [
    Item(
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
      sound: 'assets/sounds/colors/black.wav',
      jpName: 'Burakku',
    ),
    Item(
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
      sound: 'assets/sounds/colors/brown.wav',
      jpName: 'Chairo',
    ),
    Item(
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
      sound: 'assets/sounds/colors/gray.wav',
      jpName: 'Gurē',
    ),
    Item(
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'assets/sounds/colors/dusty yellow.wav',
      jpName: 'Hokori ppoi kiiro',
    ),
    Item(
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
      sound: 'assets/sounds/colors/green.wav',
      jpName: 'Midori',
    ),
    Item(
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
      sound: 'assets/sounds/colors/red.wav',
      jpName: 'Aka',
    ),
    Item(
      enName: 'white',
      image: 'assets/images/colors/color_white.png',
      sound: 'assets/sounds/colors/white.wav',
      jpName: 'Shiro',
    ),
    Item(
      enName: 'yellow',
      image: 'assets/images/colors/yellow.png',
      sound: 'assets/sounds/colors/yellow.wav',
      jpName: 'Kiiro',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            'Colors',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (context, index) => Info(
            item: familyMembers[index],
            color: Colors.purple,
          ),
        ));
  }
}
