import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quotes_app_daliy_task/utils/geeta_only_Short_shloksh/LIST.dart';
import 'package:quotes_app_daliy_task/utils/geeta_only_short_sholkshModel/shlokModel.dart';

shlokModel? ShlokModel;
bool cheak = false;

class todalView extends StatefulWidget {
  const todalView({super.key});

  @override
  State<todalView> createState() => _todalViewState();
}

class _todalViewState extends State<todalView> {
  @override
  void initState() {
    ShlokModel = shlokModel.toList(ShlokList);
    super.initState();
  }

  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Colors.grey.shade200,

        )

    );
    SystemChrome.setPreferredOrientations([
      // DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight
    ]);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber.shade200,
          title: Text('Bhagvat Geeta Summary'),
          actions: [
            GestureDetector(
              onTap: () {
                setState(() {
                  cheak = !cheak;
                });
              },
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  cheak ? Icons.list : Icons.grid_view,
                ),
              ),
            )
          ],
        ),
        body: (cheak)
            ? GridView.builder(
          itemCount:18,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 9 / 25,
      
      
                ),
                itemBuilder: (context, index) => Card(
      
      
                  color: colorList[index % colorList.length],
                  child: ListTile(
                    title: Text(ShlokModel!.ShlokList[index].chapter_number!),
                    subtitle: Text(ShlokModel!.ShlokList[index].chapter_summary!),
                  ),
                ),
              )
            : ListView.builder(
                physics: BouncingScrollPhysics(),
          itemCount: 18,
                itemBuilder: (context, index) => Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  // ...List.generate(
                  //     ShlokModel!.ShlokList.length,
                  //     (index) =>
          Card(
                            color: colorList[index % colorList.length],
                            child: ListTile(
                              title: Text(
                                  ShlokModel!.ShlokList[index].chapter_number!),
                              subtitle: Text(
                                  ShlokModel!.ShlokList[index].chapter_summary!),
                            ),
                          )
                  //),
                ]),
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Random random = Random();
      
            int x = random.nextInt(ShlokModel!.ShlokList.length);
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: colorList[x % colorList.length],
                title: Text(ShlokModel!.ShlokList[x].chapter_number!),
                content: Text(ShlokModel!.ShlokList[x].chapter_summary!),
              ),
            );
          },
          child: Icon(Icons.next_plan_outlined),
        ),
      ),
    );
  }
}
