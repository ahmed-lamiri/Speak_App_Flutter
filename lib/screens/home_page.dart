import 'package:flutter/material.dart';
import 'package:speak/components/category_item.dart';
import 'package:speak/screens/colors_page.dart';
import 'package:speak/screens/family_members_page.dart';
import 'package:speak/screens/numbers_page.dart';
import 'package:speak/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF493128),
        title: const Text(
          'Toku',
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return NumbersPage();
                }),
              );
            },
            text: 'Numbers',
            color: Color(0xFFF8942F),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return FamilyMembersPage();
                }),
              );
            },
            text: 'FamilyMembers',
            color: Color(0xFF527F30),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ColorsPage();
                }),
              );
            },
            text: 'Colors',
            color: Color(0xFF7C3FA0),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return PhrasesPage();
                }),
              );
            },
            text: 'Phrases',
            color: Color(0xFF46A4C9),
          ),
        ],
      ),
    );
  }
}
