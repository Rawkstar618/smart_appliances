import 'package:flutter/material.dart';
import 'package:rgb/dialog1.dart';
import 'package:rgb/template/app_list_button_temp.dart';

final List<List<String>> appList = [
  ['False Ceiling RGB', 'true'],
  ['False Ceiling Corner RGB (Single)', 'true'],
  ['Bed Backside RGB', 'true'],
  ['Cabana RGB', 'true'],
  ['Fan', 'false'],
  ['Air Conditioner', 'false'],
  ['Air Purifier', 'false'],
];

class AppList extends StatelessWidget {
  const AppList({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 26,
              ),
              'Appliance List'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView(
                children: appList
                    .map(
                      (e) => Column(
                        children: [
                          AppListButtonTemplate(
                            buttonContent: e[0],
                            onPressed: () {
                              showDialog(
                                barrierDismissible: true,
                                useSafeArea: true,
                                context: context,
                                builder: (context) => Dialog1(
                                    isRGB: (e[1] == 'true') ? true : false),
                              );
                            },
                          ),
                        ],
                      ),
                    )
                    .toList()),
          ),
        ),
      ),
    );
  }
}
