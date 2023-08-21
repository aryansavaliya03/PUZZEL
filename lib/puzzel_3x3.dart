import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: puzzel3x3(),
    debugShowCheckedModeBanner: false,
  ));
}

class puzzel3x3 extends StatefulWidget {
  const puzzel3x3({super.key});

  @override
  State<puzzel3x3> createState() => _puzzel3x3State();
}

class _puzzel3x3State extends State<puzzel3x3> {
  List l = [];
 String wining="";
  @override
  void initState() {
    super.initState();
    // l = List.filled(9, "");
    print("puzzle");
    setState(() {
      get();
    win();
    });
  }

  get() {
    for (int i = 0; i < 9; i++) {
      int r = Random().nextInt(9);
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
        l[7] == 8)
    {
      wining="ℙ𝕃𝔸𝕐𝔼ℝ 𝕀𝕊 𝕎𝕀ℕ";
      print(win);
    }
  }
  color1()
  {
    for(int i=0;i<9;i++)
      {
          if(l[i]=="")
            {

            }
      }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("𝐩𝐮𝐳𝐳𝐥𝐞 𝟑 𝐱 𝟑"),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("𝕨𝕚𝕟: $wining",style: TextStyle(fontSize: 40),),
            SizedBox(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (l[1] == "") {
                        l[1] = l[0];
                        l[0] = "";
                      } else if (l[3] == "") {
                        l[3] = l[0];
                        l[0] = "";
                      }
                      win();
                      setState(() {});
                    },
                    child: Container(
                      child: Text(
                        "${l[0]}",
                        style: TextStyle(fontSize: 50, color: Colors.black),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: (l[0]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (l[0] == "") {
                        l[0] = l[1];
                        l[1] = "";
                      } else if (l[2] == "") {
                        l[2] = l[1];
                        l[1] = "";
                      } else if (l[4] == "") {
                        l[4] = l[1];
                        l[1] = "";
                      }
                      win();
                      setState(() {});
                    },
                    child: Container(
                      child: Text(
                        "${l[1]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 150,
                      height: 150,
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
                    } else if (l[5] == "") {
                      l[5] = l[2];
                      l[2] = "";
                    }
                    win();
                    setState(() {});
                  },
                    child: Container(
                      child: Text(
                        "${l[2]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: (l[2]=="")?Colors.white:Colors.brown,
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
                      l[0] = l[3];
                      l[3] = "";
                    } else if (l[4] == "") {
                      l[4] = l[3];
                      l[3] = "";
                    } else if (l[6] == "") {
                      l[6] = l[3];
                      l[3] = "";
                    }
                    win();
                    setState(() {});
                  },
                    child: Container(
                      child: Text(
                        "${l[3]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: (l[3]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (l[1] == "") {
                        l[1] = l[4];
                        l[4] = "";
                      } else if (l[3] == "") {
                        l[3] = l[4];
                        l[4] = "";
                      } else if (l[5] == "") {
                        l[5] = l[4];
                        l[4] = "";
                      } else if (l[7] == "") {
                        l[7] = l[4];
                        l[4] = "";
                      }
                      win();
                      setState(() {});
                    },
                    child: Container(
                      child: Text(
                        "${l[4]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: (l[4]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap:() {
                    if (l[2] == "") {
                      l[2] = l[5];
                      l[5] = "";
                    } else if (l[4] == "") {
                      l[4] = l[5];
                      l[5] = "";
                    } else if (l[8] == "") {
                      l[8] = l[5];
                      l[5] = "";
                    }
                    win();
                    setState(() {});
                  },
                    child: Container(
                      child: Text(
                        "${l[5]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: (l[5]=="")?Colors.white:Colors.brown,
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
                    if (l[3] == "") {
                      l[3] = l[6];
                      l[6] = "";
                    } else if (l[7] == "") {
                      l[7] = l[6];
                      l[6] = "";
                    }win();
                    setState(() {});
                  },
                    child: Container(
                      child: Text(
                        "${l[6]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: (l[6]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    if (l[4] == "") {
                      l[4] = l[7];
                      l[7] = "";
                    } else if (l[6] == "") {
                      l[6] = l[7];
                      l[7] = "";
                    } else if (l[8] == "") {
                      l[8] = l[7];
                      l[7] = "";
                    }win();
                    setState(() {});
                  },
                    child: Container(
                      child: Text(
                        "${l[7]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: (l[7]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    if (l[5] == "") {
                      l[5] = l[8];
                      l[8] = "";
                    } else if (l[7] == "") {
                      l[7] = l[8];
                      l[8] = "";
                    }win();
                    setState(() {});
                  },
                    child: Container(
                      child: Text(
                        "${l[8]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: (l[8]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 90),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return puzzel3x3();
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
