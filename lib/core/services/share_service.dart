import 'package:flutter_share/flutter_share.dart';

class Serviceshare {
  static Future<void> share() async {
    await FlutterShare.share(
        title: "Ispnacha so'zlashgich",
        linkUrl: 'https://play.google.com/store/apps/details?id=com.miraziz.uzbesp',
        chooserTitle: "Ispnacha so'zlashgich");
  }
}
