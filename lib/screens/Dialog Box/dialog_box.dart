import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dialogPage extends StatefulWidget {
  const dialogPage({super.key});

  @override
  State<dialogPage> createState() => _dialogPageState();
}

class _dialogPageState extends State<dialogPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dialog Box',style: TextStyle(
          fontWeight: FontWeight.w800
        ),),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            showDialog(context: context, builder: (context) {
              return Dialog(
                child: Container(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FlutterLogo(size: 150,),
                      Text("This is a Dialog Box",style:TextStyle(fontSize: 20),),
                      ElevatedButton(

                          onPressed: (){
                            Navigator.of(context).pop();
                          }, child: Text("Back"))
                    ],
                  ),
                ),
              );
            },
            );

          }, child: Text('Dialog Box')),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: () {
            showDialog(context: context, builder: (context) {
              return AlertDialog(
             title: Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Text("This is a AlertDialog Box",style:TextStyle(fontSize: 20),),
                    Text("Success",style:TextStyle(fontSize: 20),),
                   Row(
                     children: [
                       ElevatedButton(

                           onPressed: (){
                             Navigator.of(context).pop();
                           }, child: Text("Back")),
                       SizedBox(
                         width: 50,
                       ),
                       ElevatedButton(

                           onPressed: (){
                             Navigator.of(context).pop();
                           }, child: Text("Save"))
                     ],
                   )
                  ],
                ),
              ),
              );
            },
            );

          }, child: Text('AlertDialog Box')),
          ElevatedButton(
              child: Text("CupertinoAlertDialog-1"),
              onPressed:(){
                showDialog(context: context, builder: (BuildContext context){
                  return CupertinoAlertDialog(
                    title: Text("Success"),
                    actions: [
                      CupertinoDialogAction(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text("Back")),
                      CupertinoDialogAction(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text("Next")),
                    ],

                    content: Text("Saved successfully file"),
                  );
                });
              }
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              child: Text("CupertinoAlertDialog-2"),
              onPressed:(){
                showDialog(context: context, builder: (BuildContext context){
                  return CupertinoAlertDialog(
                    title: Text("Success"),
                    actions: [
                      CupertinoDialogAction(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text("Back")),
                      CupertinoDialogAction(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text("Next")),
                      CupertinoDialogAction(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text("Save")),

                    ],

                    content: Text("Saved successfully file"),
                  );
                });
              }
          ),
          SizedBox(
            height: 20,
          ),
ElevatedButton(onPressed: () {
  showDialog(context: context, builder:(BuildContext context){
    return Dialog.fullscreen(
      child: Center(
        child: Container(
          height: 200,
          child: Column(
            children: [
              FlutterLogo(size: 100,),

            ],
          ),
        ),
      ),
    );
  },
  );

}, child: Text('Full Page'))
          // ElevatedButton(onPressed: () {
          //   showDialog(context: context, builder: (context) {
          //     return Custom(
          //       title: Container(
          //         height: 200,
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceAround,
          //           children: [
          //
          //             Text("This is a AlertDialog Box",style:TextStyle(fontSize: 20),),
          //             Text("Success",style:TextStyle(fontSize: 20),),
          //             Row(
          //               children: [
          //                 ElevatedButton(
          //
          //                     onPressed: (){
          //                       Navigator.of(context).pop();
          //                     }, child: Text("Back")),
          //                 SizedBox(
          //                   width: 50,
          //                 ),
          //                 ElevatedButton(
          //
          //                     onPressed: (){
          //                       Navigator.of(context).pop();
          //                     }, child: Text("Save"))
          //               ],
          //             )
          //           ],
          //         ),
          //       ),
          //     );
          //   },
          //   );
          //
          // }, child: Text(' Custom dialog Box'))
        ],
      ),
    ));
  }
}
