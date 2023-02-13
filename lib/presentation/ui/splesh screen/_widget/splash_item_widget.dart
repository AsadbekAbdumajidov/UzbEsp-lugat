import 'package:flutter/cupertino.dart';
import 'package:uzesp/core/constants/theme/const_color.dart';
import 'package:uzesp/presentation/components/size_konfig.dart';

import '../../../../core/constants/padding/padding_comp.dart';

class SplashItemwidget extends StatelessWidget {
  const SplashItemwidget({Key? key, required this.img, required this.title, required this.subTitle}) : super(key: key);
  final String img;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/img/$img.png",
          height: he(220),
        ),
        MyPadddings.pdOnly(
          top: he(40),
          bottom: he(14),
          child: Text(
            title,
            style: TextStyle(
                color: ConstColor.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: he(19)),
          ),
        ),
        Text(
          subTitle,
          style: TextStyle(color: ConstColor.blackColor.withOpacity(0.6)),
        ),
      ],
    );
  }
}
