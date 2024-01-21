import 'package:flutter/material.dart';
import 'package:samiversion/components/category_item.dart';
import 'package:samiversion/screens/family_page.dart';
import 'package:samiversion/screens/numbers_page.dart';
import 'package:samiversion/screens/colors_page.dart';
import 'package:samiversion/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NumbersPage()));
            },
            CatergoryName: 'Numbers',
            CatergoryColor: Colors.orange,
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FamilyPage()));
            },
            CatergoryName: 'FamilyMembers',
            CatergoryColor: Colors.green,
          ),
          Category(
            CatergoryName: 'Colors',
            CatergoryColor: Colors.purple,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColorsPage()));
            },
          ),
          Category(
            CatergoryName: 'Phrases',
            CatergoryColor: Colors.blue,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PhrasesPage()));
            },
          ),
        ],
      ),
    );
  }
}
