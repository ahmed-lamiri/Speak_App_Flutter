import 'package:flutter/material.dart';
import 'package:speak/components/item.dart';
import 'package:speak/models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({
    Key? key,
    required this.phrase,
    required this.color,
    required this.typeItem,
  }) : super(key: key);

  final Color color;
  final Item phrase;
  final String typeItem;

  final List<Item> Phrase = const [
    Item(
      jpName: 'ichi',
      enName: 'are you coming',
      sound: 'are_you_coming.wav',
    ),
    Item(
      jpName: 'ni',
      enName: 'dont forget to subscribe',
      sound: 'dont_forget_to_subscribe.wav',
    ),
    Item(
      jpName: 'san',
      enName: 'how are you feeling',
      sound: 'how_are_you_feeling.wav',
    ),
    Item(
      jpName: 'go',
      enName: 'i love anime',
      sound: 'i_love_anime.wav',
    ),
    Item(
      jpName: 'rouk',
      enName: 'i love programming',
      sound: 'i_love_programming.wav',
    ),
    Item(
      jpName: 'sebun',
      enName: 'programming is easy',
      sound: 'programming_is_easy.wav',
    ),
    Item(
      jpName: 'hachi',
      enName: 'what is your name',
      sound: 'what_is_your_namer.wav',
    ),
    Item(
      jpName: 'ikyu',
      enName: 'where are you going',
      sound: 'where_are_you_going.wav',
    ),
    Item(
      jpName: 'ju',
      enName: 'yes_im_coming',
      sound: 'yes im coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xFF493128),
      ),
      body: ListView.builder(
          itemCount: Phrase.length,
          itemBuilder: (context, index) {
            return ListItem(
              number: Phrase[index],
              color: Color(0xFF46A4C9),
              typeItem: 'phrases',
            );
          }),
    );
  }
}
