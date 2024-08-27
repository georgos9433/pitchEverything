import 'package:flutter/material.dart';
import 'dart:math';

var vettImages=['1','2','3','4'];
var element='1';
var elementOld='1';

class game extends StatefulWidget {

  const game({Key? key}) : super(key: key);

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  @override
  Widget build(BuildContext context) {

    final _random= new Random();
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.greenAccent,
          title: Center(
            child: Text('Can you pitch it?',
                style: TextStyle(
                  color: Colors.blueAccent.withOpacity(1),
                  fontSize: 36,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Marker',
                )
            ),
          ),

          leading: GestureDetector(
            onTap: () {
              element='1';
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.grey[600],
            ),
          ),
          elevation: 0,
        ),
        body: Center(
          child: SafeArea(
            child: Padding(
            padding: const EdgeInsets.all(20.00),
              child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             // crossAxisAlignment: CrossAxisAlignment.end,
             children: [
               Flexible(
                   child: Image.asset(  'assets/images/'+ element + '.png'),
               ),
               ////////////////////////////////////
               const SizedBox(
                 height: 10,
               ),
               //////////////////////////////////////
               Container(
                 height: 80,
                 width: 300,
                 decoration: BoxDecoration(
                     color: Colors.greenAccent,
                     borderRadius:
                     const BorderRadius.all(Radius.circular(20)),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.3),
                         spreadRadius: 5,
                         blurRadius: 7,
                         offset: const Offset(0, 8),
                       ),
                     ]),
                 child: TextButton(
                   onPressed: () {

                     element = vettImages[_random.nextInt(vettImages.length)];


                     while (element=='1') {
                       element = vettImages[_random.nextInt(vettImages.length)];
                     }

                     while (elementOld==element) {
                       element = vettImages[_random.nextInt(vettImages.length)];
                       while (element=='1') {
                         element = vettImages[_random.nextInt(vettImages.length)];
                       }
                     }



                     elementOld=element;
                     setState(() {});
                     
                   },
                   child:const Text(
                     'Avanti',
                     style: TextStyle(
                         fontSize: 25,
                         color: Colors.blueAccent,
                         fontWeight: FontWeight.bold),
                   ),
                 ),
               ),


             ],
            ),
          ),
    ),
        ));
  }
}
