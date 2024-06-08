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
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        title: Text('Dialog Box',style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.white
        ),),
      ),
      body: Column(

        children: [

          SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(onPressed: () {
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
          ),
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
                         width: 40,
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: ElevatedButton(

                             onPressed: (){
                               Navigator.of(context).pop();
                             }, child: Text("Save")),
                       )
                     ],
                   )
                  ],
                ),
              ),
              );
            },
            );

          }, child: Text('AlertDialog Box')),
          SizedBox(
            width: 50,
            height: 50,
          ),
          ElevatedButton(
              child: Text("CupertinoAlertDialog-part 1"),
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
            height: 50,
          ),
          ElevatedButton(
              child: Text("CupertinoAlertDialog-part 2"),
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
            height: 50,
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
    SizedBox(height: 30,),
    ElevatedButton(

    onPressed: (){
    Navigator.of(context).pop();
    }, child: Text("Back")),


            ],
          ),
        ),
      ),
    );
  },
  );

}, child: Text('Full Page'))

        ],
      ),
    ));
  }
}
