
import 'package:flutter/material.dart';
import '../models/item.dart';
import '../screens/phrase_page.dart';
class listItem extends StatelessWidget {
  const listItem({Key? key, required this.item,required this.color, required this.itemType}) : super(key: key);
final Item item;
final Color color;
final String itemType;
  @override
  Widget build(BuildContext context) {
    return item.image== null?  Container(
        height: 100,
        color: color,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(item.jpName,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),),

                  Text(item.enName,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(flex: 1,),
            Padding(

              padding: const EdgeInsets.only(right: 12),
              child: IconButton(onPressed: (){
                AudioCache player = AudioCache(prefix: "assets/sounds/$itemType/"  );
                player.play(item.sound);

              },
                icon: Icon(Icons.play_arrow,color: Colors.white,size: 35),

              ),
            )
          ],

        )
    )  : Container(
        height: 100,
        color: color,
        child: Row(
          children: [

            Container(
              width: 100,
              color: Color(0xffFFF6DC),
              child: Image.asset(item.image!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(item.jpName,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),

                  Text(item.enName,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(flex: 1,),
            Padding(

              padding: const EdgeInsets.only(right: 12),
              child: IconButton(onPressed: (){
                AudioCache player = AudioCache(prefix: "assets/sounds/$itemType/"  );
                player.play(item.sound);

              },
                icon: Icon(Icons.play_arrow,color: Colors.white,size: 35),

              ),
            )
          ],

        )
    );

  }
}

class phraseItem extends StatelessWidget {
  const phraseItem({Key? key,
    required this.color,required this.itemType,required this.phrase})
      : super(key: key);

  final Item phrase;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: color,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(phrase.jpName,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),

                  Text(phrase.enName,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(flex: 1,),
            Padding(

              padding: const EdgeInsets.only(right: 12),
              child: IconButton(onPressed: (){
                AudioCache player = AudioCache(prefix: "assets/sounds/$itemType/"  );
                player.play(phrase.sound);

              },
                icon: Icon(Icons.play_arrow,color: Colors.white,size: 35),

              ),
            )
          ],

        )
    );
  }
}