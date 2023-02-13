import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uzesp/presentation/components/size_konfig.dart';
import 'package:uzesp/core/constants/padding/padding_comp.dart';
import 'package:uzesp/presentation/ui/splesh%20screen/_widget/splash_app_bar.dart';
import 'package:uzesp/presentation/ui/splesh%20screen/_widget/splash_item_widget.dart';
import '../../../core/constants/theme/const_color.dart';

class WelcomePage1 extends StatelessWidget {
  const WelcomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Scaffold(
        appBar: SplashAppBarWidget(
          title: "O'tkazib yuborish   ",
          textOnTap: () {
            Hive.box("bool").putAt(0, true);
            Navigator.pushNamedAndRemoveUntil(
                context, "/home", (route) => false);
          },
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyPadddings.pdSymetric(
              vertical: he(20),
              horizontal: wi(15),
              child: Column(
                children: [
                  const SplashItemwidget(
                      img: "w1",
                      title: "Uzbekcha va Ispancha \n        so'zlashgich",
                      subTitle:
                          "Ispan tilida ko'p ishlatiladigan gaplar va gapirganda\n              qiynalmaslik uchun dastur"),
                  Column(
                    children: [
                      MyPadddings.pdOnly(
                        top: he(50),
                        bottom: he(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FadeInUp(
                                child: Icon(Icons.fiber_manual_record,
                                    color: ConstColor.siyohColor)),
                            Icon(Icons.fiber_manual_record_outlined,
                                color: ConstColor.siyohColor),
                            Icon(Icons.fiber_manual_record_outlined,
                                color: ConstColor.siyohColor)
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: he(40),
                        backgroundColor: ConstColor.siyohColor,
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/w2");
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: ConstColor.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
