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
