import 'package:flutter/material.dart';
import 'package:samiversion/models/number.dart';
import 'package:samiversion/components/item.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<Item> familyMembers = const [
    Item(
      enName: 'father',
      image: 'assets/images/family_members/family_father.png',
      sound: 'assets/sounds/family_members/father.wav',
      jpName: 'Chichioya',
    ),
    Item(
      enName: 'mother',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'assets/sounds/family_members/mother.wav',
      jpName: 'Hahaoya',
    ),
    Item(
      enName: 'brother',
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'assets/sounds/family_members/older_bother.wav',
      jpName: 'Nīsan',
    ),
    Item(
      enName: 'sister',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'assets/sounds/family_members/older_sister.wav',
      jpName: 'Ane',
    ),
    Item(
      enName: 'grandfather',
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'assets/sounds/family_members/grand father.wav',
      jpName: 'Ojīsan',
    ),
    Item(
      enName: 'grandmother',
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'assets/sounds/family_members/grand mother.wav',
      jpName: 'Sobo',
    ),
    Item(
      enName: 'son',
      image: 'assets/images/family_members/family_son.png',
      sound: 'assets/sounds/family_members/son.wav',
      jpName: 'Musuko',
    ),
    Item(
      enName: 'younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'assets/sounds/family_members/younger brohter.wav',
      jpName: 'Otōto',
    ),
    Item(
      enName: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'assets/sounds/family_members/younger sister.wav',
      jpName: 'Imōto',
    ),
    Item(
      enName: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'assets/sounds/family_members/daughter.wav',
      jpName: 'Musume',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            'Family Members',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (context, index) => Info(
            item: familyMembers[index],
            color: Colors.green,
          ),
        ));
  }
}
