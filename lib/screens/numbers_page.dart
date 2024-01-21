import 'package:flutter/material.dart';
import 'package:samiversion/models/number.dart';
import 'package:samiversion/components/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> numbers = const [
    Item(
      enName: 'one',
      image: 'assets/images/numbers/number_one.png',
      sound: 'assets/sounds/numbers/number_one_sound.mp3',
      jpName: 'Ichi',
    ),
    Item(
      enName: 'two',
      image: 'assets/images/numbers/number_two.png',
      sound: 'assets/sounds/numbers/number_two_sound.mp3',
      jpName: 'Ni',
    ),
    Item(
      enName: 'three',
      image: 'assets/images/numbers/number_three.png',
      sound: 'assets/sounds/numbers/number_three_sound.mp3',
      jpName: 'San',
    ),
    Item(
      enName: 'four',
      image: 'assets/images/numbers/number_four.png',
      sound: 'assets/sounds/numbers/number_four_sound.mp3',
      jpName: 'Shi',
    ),
    Item(
      enName: 'five',
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      sound: 'assets/sounds/numbers/number_five_sound.mp3',
    ),
    Item(
      enName: 'six',
      image: 'assets/images/numbers/number_six.png',
      sound: 'assets/sounds/numbers/number_six_sound.mp3',
      jpName: 'Roku',
    ),
    Item(
      enName: 'seven',
      image: 'assets/images/numbers/number_seven.png',
      sound: 'assets/sounds/numbers/number_seven_sound.mp3',
      jpName: 'Sebun',
    ),
    Item(
      enName: 'eight',
      image: 'assets/images/numbers/number_eight.png',
      sound: 'assets/sounds/numbers/number_eight_sound.mp3',
      jpName: 'Hachi',
    ),
    Item(
      enName: 'nine',
      image: 'assets/images/numbers/number_nine.png',
      sound: 'assets/sounds/numbers/number_nine_sound.mp3',
      jpName: 'Kyū',
    ),
    Item(
      enName: 'ten',
      image: 'assets/images/numbers/number_ten.png',
      sound: 'assets/sounds/numbers/number_ten_sound.mp3',
      jpName: 'Jū',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            'Numbers',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) => Info(
            item: numbers[index],
            color: Colors.orange,
          ),
        ));
  }
}
