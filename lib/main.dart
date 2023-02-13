import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzesp/presentation/provider/search_provider.dart';
import 'package:uzesp/core/routes/router.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("bool");
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => SearchProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final RouteGenerate _forRoute = RouteGenerate();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UzEsp',
        initialRoute: '/',
        onGenerateRoute: _forRoute.generate);
  }
}
