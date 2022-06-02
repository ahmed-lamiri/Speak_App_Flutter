import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:speak/models/number.dart';

class ListItem extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  ListItem({
    Key? key,
    required this.number,
    required this.color,
    required this.typeItem,
  }) : super(key: key);

  final Item number;
  final Color color;
  final String typeItem;

  @override
  Widget build(BuildContext context) {
    return number.image == null
        ? Container(
            height: 100,
            color: color,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      number.jpName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      number.enName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    try {
                      AudioCache player =
                          AudioCache(prefix: 'assets/sounds/$typeItem/');
                      player.play(number.sound);
                    } catch (ex) {
                      print(ex);
                    }
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 28,
                  ),
                )
              ],
            ),
          )
        : Container(
            height: 100,
            color: color,
            child: Row(
              children: [
                Container(
                  color: Color(0xFFFEF3D7),
                  child: Image.asset(number.image!),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        number.jpName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        number.enName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: IconButton(
                    onPressed: () {
                      try {
                        AudioCache player =
                            AudioCache(prefix: 'assets/sounds/$typeItem/');
                        player.play(number.sound);
                      } catch (ex) {
                        print(ex);
                      }
                    },
                    icon: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
