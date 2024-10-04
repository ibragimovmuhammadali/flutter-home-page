import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_home_page/main.dart';
import 'package:flutter_home_page/translate_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  _callTranslatePage(){
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return TranslatePage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("welcome".tr(),style: TextStyle(fontSize: 15),),
        actions: [
         MaterialButton(
          onPressed: (){
            _callTranslatePage();
          },
           child: IconButton(onPressed: (){
             _callTranslatePage();
           }, icon:Icon( Icons.translate_sharp)),
           ),
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
                child: 
               Text("text".tr(),style: TextStyle(fontSize: 30),)
            ),
          ],
        ),
      ),
    );
  }
}
//Localization