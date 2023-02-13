import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uzesp/presentation/components/size_konfig.dart';
import 'package:uzesp/core/constants/padding/padding_comp.dart';
import 'package:uzesp/core/services/service_link.dart';

import '../../../../core/constants/theme/const_color.dart';

class PersonalDataItemWidget extends StatelessWidget {
  const PersonalDataItemWidget(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.tgLink,
      required this.onTapInstaGitHub})
      : super(key: key);
  final String title;
  final String subTitle;
  final String image;
  final String tgLink;
  final Function() onTapInstaGitHub;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(180),
      width: wi(163),
      decoration: BoxDecoration(
        color: ConstColor.whiteColor,
        border: Border.all(
          width: 0.4,
          color: ConstColor.blackColor.withOpacity(0.6),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: MyPadddings.pdAll(
        all: 6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
                backgroundColor: ConstColor.whiteColor,
                radius: he(34),
                backgroundImage: AssetImage("assets/img/$image.jpg")),
            Text(
              title,
              style: TextStyle(
                  color: ConstColor.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: he(10)),
            ),
            Text(
              subTitle,
              style: TextStyle(
                  color: ConstColor.blackColor.withOpacity(0.6),
                  fontSize: he(10)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    ServiceUrl.launchURL("https://t.me/$tgLink");
                  },
                  icon: SvgPicture.asset("assets/img/Vector.svg",
                      height: he(18), color: ConstColor.greenBold),
                ),
                IconButton(
                  onPressed: onTapInstaGitHub,
                  icon: SvgPicture.asset("assets/img/git.svg",
                      height: he(24), color: ConstColor.blackColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
