import 'package:flutter/material.dart';
import 'package:pitch_everything/screens/game.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
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
        elevation: 0,
      ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.00),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Padding(
                  //   padding: EdgeInsets.only(bottom: 50),
                  //   child: Text('Can you pitch it?',
                  //       style: TextStyle(
                  //         color: Colors.blueAccent.withOpacity(1),
                  //         fontSize: 36,
                  //         fontWeight: FontWeight.normal,
                  //           fontFamily: 'Marker',
                  //       )
                  //   ),
                  // ),

                  Flexible(
                      child: Image.asset('assets/images/post.png')),
                  ////////////////////////////
                  const SizedBox(height:20 ),
                  ////////////////////////////
                  Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius:
                      BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 8),
                        ),
                      ]),
                  child: TextButton(
                    onPressed: () {

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const game(),
                          // settings: RouteSettings(
                          //   arguments: scelta,
                          // ),
                        ),
                      );


                    },
                    child:const Text(
                        'Gioca!',
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
        ),




    );
  }
}
