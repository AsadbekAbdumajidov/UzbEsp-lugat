import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:uzesp/presentation/components/size_konfig.dart';
import 'package:uzesp/core/constants/theme/const_color.dart';
import 'package:uzesp/core/constants/padding/padding_comp.dart';
import 'package:uzesp/presentation/ui/biz_haqimizda/_widget/personal_data_item_widget.dart';
import 'package:uzesp/core/services/service_link.dart';

class BizHaqimizdaPage extends StatelessWidget {
  const BizHaqimizdaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstColor.siyohColor,
        leading: IconButton(
          splashRadius: 20,
          onPressed: () => Navigator.pushNamed(context, "/home"),
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: ConstColor.whiteColor),
        ),
        centerTitle: true,
        title: Text(
          "Biz haqimizda",
          style: TextStyle(
            fontFamily: "Book",
            color: ConstColor.whiteColor,
          ),
        ),
      ),
      body: FadeInUp(
        child: MyPadddings.pdSymetric(
          horizontal: wi(20),
          vertical: he(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Assalomu alaykum",
                style: TextStyle(
                  color: ConstColor.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: he(22),
                ),
              ),
              MyPadddings.pdOnly(
                top: he(12),
                child: Text(
                  "O'zbekcha va Ispancha til o'rganish dasturiga xush kelibsiz, Sizga bu dasturning foydasi tegadi degan umiddamiz.",
                  style: TextStyle(
                    color: ConstColor.blackColor,
                    fontSize: he(14),
                  ),
                ),
              ),
              MyPadddings.pdSymetric(
                vertical: he(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PersonalDataItemWidget(
                      title: "Miraziz Makhmudjonov",
                      subTitle: "Flutter dasturchi",
                      image: "Miraziz_makhmudjonov",
                      tgLink: "MDEV_group",
                      onTapInstaGitHub: () => ServiceUrl.launchURL(
                          "https://github.com/Makhmudjonov"),
                    ),
                    PersonalDataItemWidget(
                      title: "Asadbek Abdumajidov",
                      subTitle: "Flutter dasturchi",
                      image: "asadbek_abdumajidov",
                      tgLink: "asadbek_blog1",
                      onTapInstaGitHub: () => ServiceUrl.launchURL(
                          "https://github.com/AsadbekAbdumajidov"),
                    ),
                  ],
                ),
              ),
              PersonalDataItemWidget(
                title: "Toirov Abdullajon",
                subTitle: "UI/UX Designer",
                image: "Tolibjon",
                tgLink: "Otam03",
                onTapInstaGitHub: () => ServiceUrl.launchURL(
                    "https://www.instagram.com/invites/contact/?i=vtkumsj4wkfk&utm_content=khqabw1"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
