import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:samiversion/models/number.dart';

class Info extends StatelessWidget {
  final Item item;
  final Color color;
  const Info({super.key, required this.item, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1),
      height: 100,
      color: color,
      child: Row(
        children: [
          item.image != null
              ? Container(
                  height: 100,
                  color: const Color.fromARGB(255, 212, 212, 212),
                  child: Image.asset(
                    item.image!,
                    width: 80,
                  ),
                )
              : const SizedBox(
                  height: 0,
                  width: 0,
                ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: item.jpName.length > 30 ? 16 : 18,
                  ),
                  softWrap: true,
                ),
                Text(
                  item.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              try {
                AudioCache.instance = AudioCache(prefix: '');
                final player = AudioPlayer();
                player.play(AssetSource(item.sound));
              } catch (e) {
                print(e);
              }
            },
          )
        ],
      ),
    );
  }
}

// class PhraseInfo extends StatelessWidget {
//   final Item phrase;
//   final Color color;
//   const PhraseInfo({super.key, required this.phrase, required this.color});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 1),
//       height: 100,
//       color: color,
//       child: Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 16.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   phrase.jpName,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                   ),
//                 ),
//                 Text(
//                   phrase.enName,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Spacer(),
//           IconButton(
//             icon: const Icon(
//               Icons.play_arrow,
//               color: Colors.white,
//               size: 30,
//             ),
//             onPressed: () {
//               try {
//                 AudioCache.instance = AudioCache(prefix: '');
//                 final player = AudioPlayer();
//                 player.play(AssetSource(phrase.sound));
//               } catch (e) {
//                 print(e);
//               }
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
