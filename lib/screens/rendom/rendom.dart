import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quotes_app_daliy_task/utils/quotesList/quotesList.dart';
import 'package:quotes_app_daliy_task/utils/quotesModel/model.dart';

QuoteModel? quoteModel;
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  @override
  void initState()
  {
   quoteModel=QuoteModel.toList(quotesList);
   super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(

   body: SingleChildScrollView(

     scrollDirection: Axis.vertical,
     child: Column(

       children: List.generate(quoteModel!.quoteModelList.length, (index) =>Card(
         color: colorList[index%colorList.length],
         child: ListTile(
           title: Text(quoteModel!.quoteModelList[index].quote!),
           subtitle: Text(quoteModel!.quoteModelList[index].author!),
         ),
       ) ),
     ),
   ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Random random=Random();
          int x=random.nextInt(quoteModel!.quoteModelList.length);
          showDialog(context: context, builder: (context) => AlertDialog(
            backgroundColor: colorList[x % colorList.length],
            title: Text(quoteModel!.quoteModelList[x].author!),
            content: Text(quoteModel!.quoteModelList[x].quote!),

          ),);

        },child: Icon(
        Icons.next_plan_outlined
      ),
      ),

    );
  }
}
