import 'package:flutter/material.dart';
import '../components/listItems.dart';
import '../models/item.dart';

class phrasesPage extends StatelessWidget {
  const phrasesPage({Key? key}) : super(key: key);

  final List<Item> phrase = const [
    Item(
        sound: 'are_you_coming.wav',
        jpName: 'Kimasu ka',
        enName: 'are you coming',),
    Item(
        sound: 'dont_forget_to_subscribe.wav',
        jpName: 'Kōdoku suru koto o'
            ' wasurenaide kudasai',
        enName: 'do not forget to subscribe'),
    Item(
        sound: 'how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka.',
        enName: 'how are you feeling'),
    Item(
        sound: 'i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime'),
    Item(
        sound: 'where_are_you_going.wav',
        jpName: 'Doko ni iku no',
        enName: 'where are you going'),
    Item(
        sound: 'i_love_programming.wav',
        jpName: 'Watashi wa puroguramingu ga daisukidesu',
        enName: 'i love programming'),
    Item(
        sound: 'programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'programming is easy'),
    Item(
        sound: 'what_is_your_name.wav',
        jpName: 'Namae wa nandesu ka',
        enName: 'what is your name'),
    Item(
        sound: 'yes_im_coming.wav',
        jpName: 'Hai, kimasu',
        enName: 'yes im coming'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('Phrases'),
      backgroundColor: Colors.black,
    ),
      body:

      ListView.builder(itemCount : phrase.length,
        itemBuilder: (context,index){
          return listItem(item: phrase[index],color:Colors.lightBlueAccent, itemType: 'phrases', );
        },
      ),
    );
  }
  List<Widget> getList(List<Item> numbers){
    List<Widget> itemsList=[];
    for(int i =0; i <numbers.length;i++){
      itemsList.add(listItem(item: phrase[i], color:Colors.lightBlueAccent, itemType: 'phrases',));
    }
    return itemsList;
  }
}





