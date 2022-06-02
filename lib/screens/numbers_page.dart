import 'package:flutter/material.dart';
import 'package:speak/models/number.dart';
import 'package:speak/components/item.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({Key? key}) : super(key: key);
  final List<Item> numbers = const [
    Item(
      sound: 'number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
    ),
    Item(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'ni',
      enName: 'two',
      sound: 'number_two_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'san',
      enName: 'three',
      sound: 'number_three_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'go',
      enName: 'four',
      sound: 'number_four_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'rouk',
      enName: 'five',
      sound: 'number_five_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'sebun',
      enName: 'six',
      sound: 'number_six_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'hachi',
      enName: 'seven',
      sound: 'number_seven_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'ikyu',
      enName: 'eight',
      sound: 'number_eight_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'ju',
      enName: 'nine',
      sound: 'number_nine_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xFF493128),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: numbers[index],
            color: Color(0xFFF8942F),
            typeItem: 'numbers',
          );
        },
      ),
    );
  }
}
