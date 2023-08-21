import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: puzzel5x5(),
    debugShowCheckedModeBanner: false,
  ));
}

class puzzel5x5 extends StatefulWidget {
  const puzzel5x5({super.key});

  @override
  State<puzzel5x5> createState() => _puzzel5x5State();
}

class _puzzel5x5State extends State<puzzel5x5> {
  List l = [];
  String wining = "";

  @override
  void initState() {
    super.initState();
    // l = List.filled(25, "");
    print("puzzle");
    setState(() {
      get();
      win();
    });
  }

  get() {
    for (int i = 0; i < 25; i++) {
      int r = Random().nextInt(25);
      if (!l.contains(r)) {
        l.add(r);
        print(l);
      } else {
        i--;
      }
    }
    for (int i = 0; i < l.length; i++) {
      if (l[i] == 0) {
        l[i] = "";
      }
    }
  }

  win() {
    if (l[0] == 1 &&
        l[1] == 2 &&
        l[2] == 3 &&
        l[3] == 4 &&
        l[4] == 5 &&
        l[5] == 6 &&
        l[6] == 7 &&
        l[7] == 8 &&
        l[8] == 9 &&
        l[9] == 10 &&
        l[10] == 11 &&
        l[11] == 12 &&
        l[12] == 13 &&
        l[13] == 14 &&
        l[14] == 15 &&
        l[15] == 16 &&
        l[16] == 17 &&
        l[17] == 18 &&
        l[18] == 19 &&
        l[19] == 20 &&
        l[20] == 21 &&
        l[21] == 22 &&
        l[22] == 23 &&
        l[23] == 24 &&
        l[24] == 25
    ) {
      wining = "ℙ𝕃𝔸𝕐𝔼ℝ 𝕀𝕊 𝕎𝕀ℕ";
      print(win);
    }
  }
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("𝐩𝐮𝐳𝐳𝐥𝐞 𝟓 𝐱 𝟓"),
          backgroundColor: Colors.brown,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("𝕨𝕚𝕟: $wining", style: TextStyle(fontSize: 40),),
              SizedBox(height: 140),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[1] == "") {
                        l[1] = l[0];
                        l[0] = "";
                      }
                      if (l[5] == "") {
                        l[5] = l[0];
                        l[0] = "";
                      }
                      setState(() {

                      });
                      win();
                    },
                      child: Container(
                        child: Text(
                          "${l[0]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[0]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[0] == "") {
                        l[0] = l[1];
                        l[1] = "";
                      }
                      if (l[2] == "") {
                        l[2] = l[1];
                        l[1] = "";
                      }
                      if (l[6] == "") {
                        l[6] = l[1];
                        l[1] = "";
                      }
                      setState(() {

                      });
                      win();
                    },
                      child: Container(
                        child: Text(
                          "${l[1]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[1]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[1] == "") {
                        l[1] = l[2];
                        l[2] = "";
                      }
                      if (l[3] == "") {
                        l[3] = l[2];
                        l[2] = "";
                      }
                      if (l[7] == "") {
                        l[7] = l[2];
                        l[2] = "";
                      }
                      setState(() {

                      });
                      win();
                    },
                      child: Container(
                        child: Text(
                          "${l[2]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[2]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[2] == "") {
                        l[2] = l[3];
                        l[3] = "";
                      }
                      if (l[4] == "") {
                        l[4] = l[3];
                        l[3] = "";
                      }
                      if (l[8] == "") {
                        l[8] = l[3];
                        l[3] = "";
                      }
                      setState(() {

                      });
                      win();
                    },
                      child: Container(
                        child: Text(
                          "${l[3]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[3]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[3] == "") {
                        l[3] = l[4];
                        l[4] = "";
                      }
                      if (l[9] == "") {
                        l[9] = l[4];
                        l[4] = "";
                      }
                      setState(() {

                      });
                      win();
                    },
                      child: Container(
                        child: Text(
                          "${l[4]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[4]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[0] == "") {
                        l[0] = l[5];
                        l[5] = "";
                      }
                      if (l[6] == "") {
                        l[6] = l[5];
                        l[5] = "";
                      }
                      if (l[10] == "") {
                        l[10] = l[5];
                        l[5] = "";
                      }
                      setState(() {

                      });
                    },
                      child: Container(
                        child: Text(
                          "${l[5]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[5]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[1] == "") {
                        l[1] = l[6];
                        l[6] = "";
                      }
                      if (l[5] == "") {
                        l[5] = l[6];
                        l[6] = "";
                      }
                      if (l[7] == "") {
                        l[7] = l[6];
                        l[6] = "";
                      }
                      if (l[11] == "") {
                        l[11] = l[6];
                        l[6] = "";
                      }
                      setState(() {

                      });
                      win();
                    },
                      child: Container(
                        child: Text(
                          "${l[6]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[6]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[2] == "") {
                        l[2] = l[7];
                        l[7] = "";
                      }
                      if (l[6] == "") {
                        l[6] = l[7];
                        l[7] = "";
                      }
                      if (l[8] == "") {
                        l[8] = l[7];
                        l[7] = "";
                      }
                      if (l[12] == "") {
                        l[12] = l[7];
                        l[7] = "";
                      }
                      setState(() {

                      });
                      win();
                    },
                      child: Container(
                        child: Text(
                          "${l[7]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[7]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[3] == "") {
                        l[3] = l[8];
                        l[8] = "";
                      }
                      if (l[7] == "") {
                        l[7] = l[8];
                        l[8] = "";
                      }
                      if (l[9] == "") {
                        l[9] = l[8];
                        l[8] = "";
                      }
                      if (l[13] == "") {
                        l[13] = l[8];
                        l[8] = "";
                      }
                      setState(() {

                      });
                      win();
                    },
                      child: Container(
                        child: Text(
                          "${l[8]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[8]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[4] == "") {
                        l[4] = l[9];
                        l[9] = "";
                      }
                      if (l[8] == "") {
                        l[8] = l[9];
                        l[9] = "";
                      }
                      if (l[14] == "") {
                        l[14] = l[9];
                        l[9] = "";
                      }
                      setState(() {

                      });
                      win();
                    },
                      child: Container(
                        child: Text(
                          "${l[9]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[9]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[5] == "") {
                        l[5] = l[10];
                        l[10] = "";
                      }
                      if (l[11] == "") {
                        l[11] = l[10];
                        l[10] = "";
                      }
                      if (l[15] == "") {
                        l[15] = l[10];
                        l[10] = "";
                      }
                      setState(() {

                      });
                      win();
                    },
                      child: Container(
                        child: Text(
                          "${l[10]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[10]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[6] == "") {
                        l[6] = l[11];
                        l[11] = "";
                      }
                      if (l[10] == "") {
                        l[10] = l[11];
                        l[11] = "";
                      }
                      if (l[12] == "") {
                        l[12] = l[11];
                        l[11] = "";
                      }
                      if (l[16] == "") {
                        l[16] = l[11];
                        l[11] = "";
                      }
                      setState(() {

                      });
                      win();
                    },
                      child: Container(
                        child: Text(
                          "${l[11]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[11]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[7] == "") {
                        l[7] = l[12];
                        l[12] = "";
                      }
                      if (l[11] == "") {
                        l[11] = l[12];
                        l[12] = "";
                      }
                      if (l[13] == "") {
                        l[13] = l[12];
                        l[12] = "";
                      }
                      if (l[17] == "") {
                        l[17] = l[12];
                        l[12] = "";
                      }
                      setState(() {

                      });win();
                    },
                      child: Container(
                        child: Text(
                          "${l[12]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[12]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[8] == "") {
                        l[8] = l[13];
                        l[13] = "";
                      }
                      if (l[12] == "") {
                        l[12] = l[13];
                        l[13] = "";
                      }
                      if (l[14] == "") {
                        l[14] = l[13];
                        l[13] = "";
                      }
                      if (l[18] == "") {
                        l[18] = l[13];
                        l[13] = "";
                      }
                      setState(() {

                      });win();
                    },
                      child: Container(
                        child: Text(
                          "${l[13]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[13]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[9] == "") {
                        l[9] = l[14];
                        l[14] = "";
                      }
                      if (l[13] == "") {
                        l[13] = l[14];
                        l[14] = "";
                      }
                      if (l[19] == "") {
                        l[19] = l[14];
                        l[14] = "";
                      }
                      setState(() {

                      });win();
                    },
                      child: Container(
                        child: Text(
                          "${l[14]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[14]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[10] == "") {
                        l[10] = l[15];
                        l[15] = "";
                      }
                      if (l[16] == "") {
                        l[16] = l[15];
                        l[15] = "";
                      }
                      if (l[20] == "") {
                        l[20] = l[15];
                        l[15] = "";
                      }
                      setState(() {

                      });win();
                    },
                      child: Container(
                        child: Text(
                          "${l[15]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[15]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[11] == "") {
                        l[11] = l[16];
                        l[16] = "";
                      }
                      if (l[15] == "") {
                        l[15] = l[16];
                        l[16] = "";
                      }
                      if (l[17] == "") {
                        l[17] = l[16];
                        l[16] = "";
                      }
                      if (l[21] == "") {
                        l[21] = l[16];
                        l[16] = "";
                      }
                      setState(() {

                      });win();
                    },
                      child: Container(
                        child: Text(
                          "${l[16]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[16]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[12] == "") {
                        l[12] = l[17];
                        l[17] = "";
                      }
                      if (l[16] == "") {
                        l[16] = l[17];
                        l[17] = "";
                      }
                      if (l[18] == "") {
                        l[18] = l[17];
                        l[17] = "";
                      }
                      if (l[22] == "") {
                        l[22] = l[17];
                        l[17] = "";
                      }
                      setState(() {

                      });win();
                    },
                      child: Container(
                        child: Text(
                          "${l[17]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[17]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[13] == "") {
                        l[13] = l[18];
                        l[18] = "";
                      }
                      if (l[17] == "") {
                        l[17] = l[18];
                        l[18] = "";
                      }
                      if (l[19] == "") {
                        l[19] = l[18];
                        l[18] = "";
                      }
                      if (l[23] == "") {
                        l[23] = l[18];
                        l[18] = "";
                      }
                      setState(() {

                      });win();
                    },
                      child: Container(
                        child: Text(
                          "${l[18]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[18]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[14] == "") {
                        l[14] = l[19];
                        l[19] = "";
                      }
                      if (l[18] == "") {
                        l[18] = l[19];
                        l[19] = "";
                      }
                      if (l[24] == "") {
                        l[24] = l[19];
                        l[19] = "";
                      }
                      setState(() {

                      });win();
                    },
                      child: Container(
                        child: Text(
                          "${l[19]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[19]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[15] == "") {
                        l[15] = l[20];
                        l[20] = "";
                      }
                      if (l[21] == "") {
                        l[21] = l[20];
                        l[20] = "";
                      }
                      setState(() {

                      });win();
                    },
                      child: Container(
                        child: Text(
                          "${l[20]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[20]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[16] == "") {
                        l[16] = l[21];
                        l[21] = "";
                      }
                      if (l[20] == "") {
                        l[20] = l[21];
                        l[21] = "";
                      }
                      if (l[22] == "") {
                        l[22] = l[21];
                        l[21] = "";
                      }
                      setState(() {

                      });win();
                    },
                      child: Container(
                        child: Text(
                          "${l[21]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[21]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[17] == "") {
                        l[17] = l[22];
                        l[22] = "";
                      }
                      if (l[21] == "") {
                        l[21] = l[22];
                        l[22] = "";
                      }
                      if (l[23] == "") {
                        l[23] = l[22];
                        l[22] = "";
                      }
                      setState(() {

                      });win();
                    },
                      child: Container(
                        child: Text(
                          "${l[22]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[22]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[18] == "") {
                        l[18] = l[23];
                        l[23] = "";
                      }
                      if (l[22] == "") {
                        l[22] = l[23];
                        l[23] = "";
                      }
                      if (l[24] == "") {
                        l[24] = l[23];
                        l[23] = "";
                      }
                      setState(() {

                      });win();
                    },
                      child: Container(
                        child: Text(
                          "${l[23]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[23]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(onTap: () {
                      if (l[19] == "") {
                        l[19] = l[24];
                        l[24] = "";
                      }
                      if (l[23] == "") {
                        l[23] = l[24];
                        l[24] = "";
                      }
                      setState(() {

                      });
                      win();
                    },
                      child: Container(
                        child: Text(
                          "${l[24]}",
                          style: TextStyle(fontSize: 50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color:(l[24]=="")?Colors.white:Colors.brown,
                            //border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 140),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return puzzel5x5();
                      }),
                    );
                  },
                  child: Text(
                    "𝚁𝙴𝚂𝚃𝙰𝚁𝚃",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.yellow,
                      backgroundColor: Colors.lightBlueAccent,
                    ),
                  ))
            ],
          ),
        ),
      );
    }
  }
