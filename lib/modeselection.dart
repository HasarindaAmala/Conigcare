
import 'package:conigcare/homepage.dart';
import 'package:conigcare/learn.dart';
import 'package:conigcare/reusable.dart';
import 'package:conigcare/speak.dart';
import 'package:flutter/material.dart';

class ModePage extends StatefulWidget {
  const ModePage({super.key});

  @override
  State<ModePage> createState() => _ModePageState();
}

class _ModePageState extends State<ModePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey, //----------- Assign the scaffold key-------------
        // appBar: AppBar(
        //   //title: Text('Learn Page'),
        //   automaticallyImplyLeading: false, //--------- remove default back arrow-----------------
        //   backgroundColor: Color(0xFF030404),
        //
        //   //------------------- set the app bar height -----------------------
        //   toolbarHeight:MediaQuery.of(context).size.height*0.1,
        //
        //   //--------------------------- back arrow to previous page ---------------------------
        //   leading: GestureDetector(
        //     onTap: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) =>ModePage(),
        //         ),
        //       );
        //     },
        //     child: Container(
        //       margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.02,left: MediaQuery.of(context).size.width*0.025),
        //       height:MediaQuery.of(context).size.height*0.2,
        //       width: MediaQuery.of(context).size.width*0.2,
        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         gradient: LinearGradient(
        //           begin: Alignment.topCenter,
        //           end: Alignment.bottomCenter,
        //           colors: [
        //             Color(0xFF030404),
        //             Color(0xFF2F3944), // Transparent color
        //           ],
        //         ),
        //         border: Border.all(
        //           width: 2.0,
        //           style: BorderStyle.solid,
        //           color:Color.fromARGB(243, 116, 45, 0),
        //         ),
        //         boxShadow: [
        //           BoxShadow(
        //             color: Color(0x120E0E59),
        //             offset: Offset(4, 4),
        //             blurRadius: 4,
        //             spreadRadius: 0,
        //           ),
        //         ],
        //       ),
        //       child: Center(
        //         child: Icon(
        //           Icons.arrow_back,
        //           color: Colors.white,
        //           size: MediaQuery.of(context).size.height*0.03,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),

        //------------------------------ drawer options --------------------------

        body: SingleChildScrollView(
          child: Center(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child:
                  Container(
                      height:MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF030404),
                              Color(0xFF2F3944),
                            ]
                        ),
                      )
                  ),
                ),
                Container(
                  height:MediaQuery.of(context).size.height*0.65,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image:DecorationImage(
                        image:AssetImage("Assets/images/mic.png"),
                        fit:BoxFit.fill,)
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>HomePage(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.02,left: MediaQuery.of(context).size.width*0.06),
                    height:MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width*0.15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF030404),
                          Color(0xFF2F3944), // Transparent color
                        ],
                      ),
                      border: Border.all(
                        width: 2.0,
                        style: BorderStyle.solid,
                        color:Color.fromARGB(243, 116, 45, 0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x120E0E59),
                          offset: Offset(4, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.height*0.05,
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.53,left: MediaQuery.of(context).size.width*0.073),
                  child: Text('MODE',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height*0.06),
                  ),
                ),

                Row(
                    children: [
                      BlockSet1(context,"LEARN",'Group 1.png',LearnPage()),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.05,
                      ),
                      BlockSet1(context,"SPEAK",'icon-park-outline_people-speak.png',SpeakPage()),
                    ]
                )
              ],
            ),

          ),
        )


    );
  }
}