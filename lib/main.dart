import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skillatics/TranslationText.dart';
import 'package:skillatics/menuPage.dart';

void main() {
  runApp(MyApp());
}

//damit primaryswatch in materialapp themedata customized color haben kann
Map<int, Color> color = {
  50: const Color.fromRGBO(188, 250, 0, .1),
  100: const Color.fromRGBO(188, 250, 0, .2),
  200: const Color.fromRGBO(188, 250, 0, .3),
  300: const Color.fromRGBO(188, 250, 0, .4),
  400: const Color.fromRGBO(188, 250, 0, .5),
  500: const Color.fromRGBO(188, 250, 0, .6),
  600: const Color.fromRGBO(188, 250, 0, .7),
  700: const Color.fromRGBO(188, 250, 0, .8),
  800: const Color.fromRGBO(188, 250, 0, .9),
  900: const Color.fromRGBO(188, 250, 0, 1),
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  MaterialColor colorCustom = MaterialColor(0xffbcfa00, color);

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Skillatics',
      theme: ThemeData(
        primarySwatch: colorCustom,
        //unselectedWidgetColor: Colors.black, //noch nötig?
      ),
      home: MyHomePage(
        title: 'Skillatics',
        currentCountry: "GB", //aktuelle Flagge die oben rechts erscheint
      ),
      translations: TranslationText(),
      locale: const Locale('de', 'DE'),
    );
  }
}
