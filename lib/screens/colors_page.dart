import 'package:flutter/material.dart';

import '../components/listItems.dart';
import '../models/item.dart';

class colorsPage extends StatelessWidget {
  const colorsPage({Key? key}) : super(key: key);

  final List<Item> colors = const [
    Item(
        sound: 'black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'burakku',
        enName: 'black'),
    Item(
        sound: 'brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'chairo',
        enName: 'brown'),
    Item(
        sound: 'dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'hokori ppoi kiiro',
        enName: 'dusty yellow'),
    Item(
        sound: 'gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'gure',
        enName: 'gray'),
    Item(
        sound: 'green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'midori',
        enName: 'green'),
    Item(
        sound: 'red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'aka',
        enName: 'red'),
    Item(
        sound: 'white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'shiroi',
        enName: 'white'),
    Item(
        sound: 'yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'kiiro',
        enName: 'yellow'),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Colors'),
      backgroundColor: Colors.black,
    ),
      body:

      ListView.builder(itemCount : colors.length,
        itemBuilder: (context,index){
          return listItem(item: colors[index],color:Colors.teal, itemType: 'colors', );
        },
      ),


    );
  }
  List<Widget> getList(List<Item> numbers){
    List<Widget> itemsList=[];
    for(int i =0; i <numbers.length;i++){
      itemsList.add(listItem(item: numbers[i], color: Colors.teal, itemType: 'colors',));

    }
    return itemsList;
  }
}
