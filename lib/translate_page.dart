import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_home_page/home_page.dart';

class TranslatePage extends StatefulWidget {
  static const String id = "translate_page";
  const TranslatePage({super.key,});
  @override
  State<TranslatePage> createState() => _TranslatePageState();

}
class _TranslatePageState extends State<TranslatePage> {

  _callHomePage(){
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return HomePage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("welcome".tr(),style: TextStyle(fontSize: 15),),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: MaterialButton (
                        color: Colors.red,
                        onPressed: () {
                          _callHomePage();
                         context.setLocale(Locale('en', 'US'));
                        },
                      child: Text("English"),
                    ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: Colors.green,
                    onPressed: () {
                      _callHomePage();
                      context.setLocale(Locale('ru', 'RU'));
                    },
                    child: Text("Russian"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: Colors.yellow,
                    onPressed: () {
                      _callHomePage();
                      context.setLocale(Locale('uz', 'UZ'));
                    },
                    child: Text("Uzbek"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      _callHomePage();
                      context.setLocale(Locale('ko', 'KR'));
                    },
                    child: Text("Korean"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: Colors.orange,
                    onPressed: () {
                      _callHomePage();
                      context.setLocale(Locale('ja', 'JP'));
                    },
                    child: Text("Japanese"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
