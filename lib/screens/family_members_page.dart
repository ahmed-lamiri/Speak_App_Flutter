import 'package:flutter/material.dart';
import 'package:speak/components/item.dart';
import 'package:speak/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({Key? key}) : super(key: key);

  final List<Item> FamilyMembers = const [
    Item(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'ichi',
      enName: 'father',
      sound: 'father.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'ni',
      enName: 'Daughter',
      sound: 'daughter.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'san',
      enName: 'Grand Father',
      sound: 'grand father.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'go',
      enName: 'Grand Mother',
      sound: 'grand mother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'rouk',
      enName: 'Mother',
      sound: 'mother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'sebun',
      enName: 'Older Brother',
      sound: 'older bother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'hachi',
      enName: 'Older Sister',
      sound: 'older sister.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'ikyu',
      enName: 'Son',
      sound: 'son.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'ju',
      enName: 'Young Brother',
      sound: 'younger brohter.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'ju',
      enName: 'Young Sister',
      sound: 'younger sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xFF493128),
      ),
      body: ListView.builder(
          itemCount: FamilyMembers.length,
          itemBuilder: (context, index) {
            return ListItem(
              number: FamilyMembers[index],
              color: Color(0xFF527F30),
              typeItem: 'family_members',
            );
          }),
    );
  }
}
