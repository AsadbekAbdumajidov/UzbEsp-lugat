import 'package:flutter/material.dart';
import 'package:uzesp/presentation/ui/biz_haqimizda/biz_haqimizda_page.dart';
import 'package:uzesp/presentation/ui/ispaniya_tarixi/ispaniya_tarixi.dart';
import 'package:uzesp/presentation/ui/next_page/next_page.dart';
import 'package:uzesp/presentation/ui/search/search.dart';

import '../../presentation/ui/home/homepage.dart';
import '../../presentation/ui/splesh screen/splesh_page.dart';
import '../../presentation/ui/splesh screen/welcome_1.dart';
import '../../presentation/ui/splesh screen/welcome_2.dart';
import '../../presentation/ui/splesh screen/welcome_3.dart';

class RouteGenerate {
  Route? generate(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SpleshPage(),
        );
      case '/w1':
        return MaterialPageRoute(
          builder: (context) => const WelcomePage1(),
        );
      case '/w2':
        return MaterialPageRoute(
          builder: (context) => const WelcomePage2(),
        );
      case '/w3':
        return MaterialPageRoute(
          builder: (context) => const WelcomePage3(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        );
      case '/search':
        return MaterialPageRoute(
          builder: (context) => const SearchPage(),
        );
      
      case '/tarix':
        return MaterialPageRoute(
          builder: (context) => const IspaniyaTarixiPage(),
        );
      case '/about':
        return MaterialPageRoute(
          builder: (context) => const BizHaqimizdaPage(),
        );
      case '/next':
        return MaterialPageRoute(
          builder: (context) =>  NextPage(index: args),
        );
    }
    return null;
  }
}
