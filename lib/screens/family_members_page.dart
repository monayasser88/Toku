import 'package:flutter/material.dart';

import '../components/listItems.dart';
import '../models/item.dart';

class familyMembersPage extends StatelessWidget {
  const familyMembersPage({Key? key}) : super(key: key);

  final List<Item> familyMembers = const [
    Item(
        sound: 'grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'ojisan',
        enName: 'grand father'),
    Item(
        sound: 'grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo',
        enName: 'grand mother'),
    Item(
        sound: 'father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'chichioya',
        enName: 'father'),
    Item(
        sound: 'mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'hahaoya',
        enName: 'mother'),
    Item(
        sound: 'son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'musuko',
        enName: 'son'),
    Item(
        sound: 'daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume',
        enName: 'daughter'),
    Item(
        sound: 'older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'nisan',
        enName: 'older brother'),
    Item(
        sound: 'older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'ani',
        enName: 'older sister'),
    Item(
        sound: 'younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'ototo',
        enName: 'younger brother'),
    Item(
        sound: 'younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imoto',
        enName: 'younger sister'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Family Members'),
      backgroundColor: Colors.black,
    ),
      body:

      ListView.builder(itemCount : familyMembers.length,
        itemBuilder: (context,index){
          return listItem(item: familyMembers[index],color:Colors.indigoAccent, itemType: 'family_members', );
        },
      ),


    );
  }
  List<Widget> getList(List<Item> numbers){
    List<Widget> itemsList=[];
    for(int i =0; i <numbers.length;i++){
      itemsList.add(listItem(item: familyMembers[i], color: Colors.indigoAccent, itemType: 'family_members',));

    }
    return itemsList;
  }
}



