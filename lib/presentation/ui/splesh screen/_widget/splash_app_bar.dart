import 'package:flutter/material.dart';
import 'package:uzesp/core/constants/theme/const_color.dart';

class SplashAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final Function()? leftOnTap;
  final Function()? textOnTap;
  final String title;

  const SplashAppBarWidget({Key? key, this.leftOnTap, this.textOnTap, required this.title}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading:leftOnTap == null ? const SizedBox.shrink(): IconButton(
          splashRadius: 20,
          onPressed: leftOnTap,
          icon: Icon(
            Icons.arrow_back,
            color: ConstColor.blackColor,
          )),
      actions: [
        TextButton(
          
          onPressed: textOnTap,
          child: Text(
            title,
            style: TextStyle(color: ConstColor.blackColor.withOpacity(0.6)),
          ),
        ),
      ],
    );
  }
}
