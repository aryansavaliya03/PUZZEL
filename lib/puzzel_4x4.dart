import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: puzzel4x4(),
    debugShowCheckedModeBanner: false,
  ));
}

class puzzel4x4 extends StatefulWidget {
  const puzzel4x4({super.key});

  @override
  State<puzzel4x4> createState() => _puzzel4x4State();
}

class _puzzel4x4State extends State<puzzel4x4> {
  List l = [];
  String wining="";
  @override
  void initState()
  {
    super.initState();
    // l = List.filled(16, "");
    print("puzzle");
    setState(() {
      get();
    });
  }
  get()
  {
    for (int i = 0; i < 16; i++) {
      int r = Random().nextInt(16);
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
        l[14] == 15) {
      wining = "PLAYER IS WIN";
      print(win);
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "𝐩𝐮𝐳𝐳𝐥𝐞 𝟒 𝐱 𝟒",
        ),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("𝕨𝕚𝕟: $wining", style: TextStyle(fontSize: 40),),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(onTap: () {
                      if(l[1]=="")
                        {
                          l[1]=l[0];
                          l[0]="";
                        }
                      if(l[4]=="")
                      {
                        l[4]=l[0];
                        l[0]="";
                      }
                      setState(() {});
                      win();
                  },
                    child: Container(
                      child: Text(
                       "${l[0]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[0]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    if(l[0]=="")
                    {
                      l[0]=l[1];
                      l[1]="";
                    }
                    if(l[2]=="")
                    {
                      l[2]=l[1];
                      l[1]="";
                    }
                    if(l[5]=="")
                    {
                      l[5]=l[1];
                      l[1]="";
                    }  setState(() {});
                    win();
                  },
                    child: Container(
                      child: Text(
                         "${l[1]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[1]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    if(l[1]=="")
                    {
                      l[1]=l[2];
                      l[2]="";
                    }
                    if(l[3]=="")
                    {
                      l[3]=l[2];
                      l[2]="";
                    }
                    if(l[6]=="")
                    {
                      l[6]=l[2];
                      l[2]="";
                    }  setState(() {});
                    win();
                  },
                    child: Container(
                      child: Text(
                        "${l[2]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[2]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    if(l[2]=="")
                    {
                      l[2]=l[3];
                      l[3]="";
                    }
                    if(l[7]=="")
                    {
                      l[7]=l[3];
                      l[3]="";
                    }  setState(() {});
                    win();
                  },
                    child: Container(
                      child: Text(
                         "${l[3]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[3]=="")?Colors.white:Colors.brown,
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
                    if(l[0]=="")
                    {
                      l[0]=l[4];
                      l[4]="";
                    }
                    if(l[5]=="")
                    {
                      l[5]=l[4];
                      l[4]="";
                    }
                    if(l[8]=="")
                    {
                      l[8]= l[4];
                      l[4]="";
                    }  setState(() {});
                    win();
                  },
                    child: Container(
                      child: Text(
                        "${l[4]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[4]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if(l[1]=="")
                      {
                        l[1]=l[5];
                        l[5]="";
                      }
                      if(l[4]=="")
                      {
                        l[4]=l[5];
                        l[5]="";
                      }
                      if(l[6]=="")
                      {
                        l[6]=l[5];
                        l[5]="";
                      }
                      if(l[9]=="")
                      {
                        l[9]=l[5];
                        l[5]="";
                      }  setState(() {});
                      win();
                    },
                    child: Container(
                      child: Text(
                         "${l[5]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[5]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    if(l[2]=="")
                    {
                      l[2]=l[6];
                      l[6]="";
                    }
                    if(l[5]=="")
                    {
                      l[5]=l[6];
                      l[6]="";
                    }
                    if(l[7]=="")
                    {
                      l[7]=l[6];
                      l[6]="";
                    }
                    if(l[10]=="")
                    {
                      l[10]=l[6];
                      l[6]="";
                    }  setState(() {});
                    win();
                  },
                    child: Container(
                      child: Text(
                         "${l[6]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[6]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    if(l[3]=="")
                    {
                      l[3]=l[7];
                      l[7]="";
                    }
                    if(l[6]=="")
                    {
                      l[6]=l[7];
                      l[7]="";
                    }
                    if(l[11]=="")
                    {
                      l[11]=l[7];
                      l[7]="";
                    }  setState(() {});
                    win();
                  },
                    child: Container(
                      child: Text(
                        "${l[7]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[7]=="")?Colors.white:Colors.brown,
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
                    if(l[4]=="")
                    {
                      l[4]=l[8];
                      l[8]="";
                    }
                    if(l[9]=="")
                    {
                      l[9]=l[8];
                      l[8]="";
                    }
                    if(l[12]=="")
                    {
                      l[12]=l[8];
                      l[8]="";
                    }  setState(() {});
                    win();
                  },
                    child: Container(
                      child: Text(
                        "${l[8]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[8]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    if(l[5]=="")
                    {
                      l[5]=l[9];
                      l[9]="";
                    }
                    if(l[8]=="")
                    {
                      l[8]=l[9];
                      l[9]="";
                    }
                    if(l[10]=="")
                    {
                      l[10]=l[9];
                      l[9]="";
                    }
                    if(l[13]=="")
                    {
                      l[13]=l[9];
                      l[9]="";
                    }  setState(() {});
                    win();
                  },
                    child: Container(
                      child: Text(
                        "${l[9]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[9]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    if(l[6]=="")
                    {
                      l[6]=l[10];
                      l[10]="";
                    }
                    if(l[9]=="")
                    {
                      l[9]=l[10];
                      l[10]="";
                    }
                    if(l[11]=="")
                    {
                      l[11]=l[10];
                      l[10]="";
                    }
                    if(l[14]=="")
                    {
                      l[14]=l[10];
                      l[10]="";
                    }  setState(() {});
                    win();
                  },
                    child: Container(
                      child: Text(
                        "${l[10]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[10]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    if(l[7]=="")
                    {
                      l[7]=l[11];
                      l[11]="";
                    }
                    if(l[10]=="")
                    {
                      l[10]=l[11];
                      l[11]="";
                    }
                    if(l[15]=="")
                    {
                      l[15]=l[11];
                      l[11]="";
                    }  setState(() {});
                    win();
                  },
                    child: Container(
                      child: Text(
                         "${l[11]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[11]=="")?Colors.white:Colors.brown,
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
                    if(l[8]=="")
                    {
                      l[8]=l[12];
                      l[12]="";
                    }
                    if(l[13]=="")
                    {
                      l[13]=l[12];
                      l[12]="";
                    }  setState(() {});
                      win();
                      },
                    child: Container(
                      child: Text(
                         "${l[12]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[12]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap:() {
                    if(l[9]=="")
                    {
                      l[9]=l[13];
                      l[13]="";
                    }
                    if(l[12]=="")
                    {
                      l[12]=l[13];
                      l[13]="";
                    }
                    if(l[14]=="")
                    {
                      l[14]=l[13];
                      l[13]="";
                    }  setState(() {});
                    win();
                  },
                    child: Container(
                      child: Text(
                         "${l[13]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[13]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    if(l[10]=="")
                    {
                      l[10]=l[14];
                      l[14]="";
                    }
                    if(l[13]=="")
                    {
                      l[13]=l[14];
                      l[14]="";
                    }
                    if(l[15]=="")
                    {
                      l[15]=l[14];
                      l[14]="";
                    }  setState(() {});
                    win();
                  },
                    child: Container(
                      child: Text(
                        "${l[14]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[14]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    if(l[11]=="")
                    {
                      l[11]=l[15];
                      l[15]="";
                    }
                    if(l[14]=="")
                    {
                      l[14]=l[15];
                      l[15]="";
                    }  setState(() {});
                    win();
                  },
                    child: Container(
                      child: Text(
                         "${l[15]}",
                        style: TextStyle(fontSize: 50),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color:(l[15]=="")?Colors.white:Colors.brown,
                          //border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return puzzel4x4();
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
