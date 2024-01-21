import 'package:flutter/material.dart';
import 'package:samiversion/models/number.dart';
import 'package:samiversion/components/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Item> phrases = const [
    Item(
      enName: 'are you coming ?',
      sound: 'assets/sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka?',
    ),
    Item(
      enName: 'don\'t forget to subscribe',
      sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
    ),
    Item(
      enName: 'how are you feeling',
      sound: 'assets/sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka.',
    ),
    Item(
      enName: 'I love anime',
      sound: 'assets/sounds/phrases/i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
    ),
    Item(
      enName: 'I love programming',
      sound: 'assets/sounds/phrases/i_love_programming.wav',
      jpName: 'Puroguramingu ga daisuki',
    ),
    Item(
      enName: 'programming is easy',
      sound: 'assets/sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu',
    ),
    Item(
      enName: 'What is your name ?',
      sound: 'assets/sounds/phrases/what_is_your_name.wav',
      jpName: 'Anata no namae wa nandesuka ?',
    ),
    Item(
      enName: 'where are you going?',
      sound: 'assets/sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko ni iku no?',
    ),
    Item(
      enName: 'yes i\'m coming',
      sound: 'assets/sounds/phrases/yes_im_coming.wav',
      jpName: 'Hai, ikimasu',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            'Phrases',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) => Info(
            color: Colors.blue,
            item: phrases[index],
          ),
        ));
  }
}
