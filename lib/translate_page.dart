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
                    child: MaterialButton(
                        color: Colors.red,
                        onPressed: () {
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
