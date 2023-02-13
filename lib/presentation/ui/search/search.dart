import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzesp/base/bolim.dart';
import 'package:uzesp/presentation/components/size_konfig.dart';
import 'package:uzesp/core/constants/theme/const_color.dart';
import 'package:uzesp/core/constants/padding/padding_comp.dart';

import '../../provider/search_provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController bolim = TextEditingController();
  @override
  Widget build(BuildContext context) {
    int son = 0;
    var img = context.watch<SearchProvider>().img.toList();
    var order = context.watch<SearchProvider>().order.toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstColor.siyohColor,
        leading: const Text(""),
        leadingWidth: 0,
        title: CupertinoSearchTextField(
          itemColor: ConstColor.whiteColor,
          controller: bolim,
          backgroundColor: ConstColor.whiteColor.withOpacity(0.1),
          onChanged: (v) => 
            context.read<SearchProvider>().chiqar(v, bolimlar),
            style:  TextStyle(color: ConstColor.whiteColor,fontSize: he(12)),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: he(10)),
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((_, __) {
          return FadeInUp(
            child: Container(
              margin:
                  EdgeInsets.symmetric(horizontal: wi(20), vertical: he(10)),
              height: he(75),
              width: wi(343),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 5),
                  ),
                ],
                color: ConstColor.whiteColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  for (int i = 0; i < bolimlar.length; i++) {
                    if (order[__] == bolimlar[i]["name"]) {
                      son = i;

                      Navigator.pushNamed(context, "/next", arguments: son);
                    }
                  }
                },
                child: MyPadddings.pdSymetric(
                  horizontal: wi(11),
                  child: Row(
                    children: [
                      Container(
                        height: he(54),
                        width: he(54),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          color: ConstColor.siyohColor.withOpacity(0.3),
                          image: DecorationImage(
                            image: AssetImage(img[__]),
                          ),
                        ),
                      ),
                      MyPadddings.pdOnly(
                        left: wi(20),
                        child: Text(
                          order[__],
                          style: TextStyle(
                              fontFamily: "balo",
                              fontSize: he(18),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
        itemCount: order.length,
      ),
    );
  }
}
