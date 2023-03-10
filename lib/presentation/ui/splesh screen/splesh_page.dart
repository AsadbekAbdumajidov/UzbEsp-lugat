import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uzesp/presentation/components/size_konfig.dart';
import 'package:uzesp/core/constants/padding/padding_comp.dart';

class SpleshPage extends StatefulWidget {
  const SpleshPage({Key? key}) : super(key: key);

  @override
  State<SpleshPage> createState() => _SpleshPageState();
}

class _SpleshPageState extends State<SpleshPage> {
  @override
  void initState() {
    if (Hive.box("bool").isEmpty) {
      Hive.box("bool").put(0, false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Future.delayed(const Duration(seconds: 3), () {
      Hive.box("bool").values.toList()[0] == false
          ? Navigator.pushNamedAndRemoveUntil(context, '/w1', (route) => false)
          : Navigator.pushNamedAndRemoveUntil(
              context, '/home', (route) => false);
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FadeInUp(
            child: MyPadddings.pdOnly(
              bottom: wi(60),
              child: Image.asset(
                "assets/img/splesh_foto.png",
                height: he(131),
              ),
            ),
          )
        ],
      ),
    );
  }
}
