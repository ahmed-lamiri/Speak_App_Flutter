import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speak/components/item.dart';
import 'package:speak/models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<Item> ColorsPg = const [
    Item(
      image: 'assets/images/colors/color_black.png',
      jpName: 'burakku',
      enName: 'black',
      sound: 'black.wav',
    ),
    Item(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'chairo',
      enName: 'brown',
      sound: 'brown.wav',
    ),
    Item(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'hokori ppoi',
      enName: 'dusty yellow',
      sound: 'dusty yellow.wav',
    ),
    Item(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'guré',
      enName: 'gray',
      sound: 'gray.wav',
    ),
    Item(
      image: 'assets/images/colors/color_green.png',
      jpName: 'midori',
      enName: 'green',
      sound: 'green.wav',
    ),
    Item(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'red',
      sound: 'red.wav',
    ),
    Item(
      image: 'assets/images/colors/color_white.png',
      jpName: 'burakku',
      enName: 'white',
      sound: 'white.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xFF493128),
      ),
      body: ListView.builder(
          itemCount: ColorsPg.length,
          itemBuilder: (context, index) {
            return ListItem(
              number: ColorsPg[index],
              color: Color(0xFF7C3FA0),
              typeItem: 'colors',
            );
          }),
    );
  }
}
