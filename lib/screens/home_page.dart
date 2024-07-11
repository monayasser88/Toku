import 'package:flutter/material.dart';
import 'package:toku/screens/phrase_page.dart';

import '../components/category_items.dart';
import 'colors_page.dart';
import 'family_members_page.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Toku'),
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          category(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder:(BuildContext context){
                return numbersPage();
              }
              )
            );
              },
            text: 'numbers',
            color: Colors.purple,
          ),
          category(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder:(BuildContext context){
                    return familyMembersPage();
                  }
                  )
              );
            },
            text: 'Family Members',
            color: Colors.indigoAccent,
          ),
          category(
            onTap: (){
             // Navigator.push(context, MaterialPageRoute(builder: (context){
              Navigator.push(context,
                  MaterialPageRoute(builder:(BuildContext context){
                    return colorsPage();
                  }
                  )
              );
            },
            text: 'Colors',
            color: Colors.teal,
          ),
          category(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder:(BuildContext context){
                    return phrasesPage();
                  }
                  )
              );
            },
            text: 'Phrases',
            color: Colors.lightBlueAccent,
          ),


        ],
      ),
    );
  }
}


