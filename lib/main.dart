import 'package:flutter/material.dart';
import 'package:puzzel/puzzel_3x3.dart';
import 'package:puzzel/puzzel_4x4.dart';
import 'package:puzzel/puzzel_5x5.dart';
import 'package:puzzel/puzzle.dart';

void main()
{
  runApp(MaterialApp(home: puzzel(),debugShowCheckedModeBanner: false,));
}
class puzzel extends StatefulWidget {
  const puzzel({super.key});

  @override
  State<puzzel> createState() => _puzzelState();
}

class _puzzelState extends State<puzzel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown,
        title: Text("PUZZLE"),
      ),
      body: Container(width: double.infinity,height: double.infinity,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/puzzelback1.jpeg",),fit: BoxFit.fill,)),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () {

              Navigator.push(context, MaterialPageRoute(
              builder: (context)
                {
                  return puzzel3x3();
                },
                  ));
              },child: Container(width: 250,height: 80,decoration: BoxDecoration(color: Colors.grey,border: Border.all(width: 10,color: Colors.brown),borderRadius: BorderRadius.circular(20)),child: Text("  𝟛  X  𝟛  ",style: TextStyle(color: Colors.brown,fontSize: 40),selectionColor: Colors.brown),alignment: Alignment.center,)),
              SizedBox(height: 20,),

              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)
                  {
                    return puzzel4x4();
                  },
                ));
              },child: Container(width: 250,height: 80,decoration: BoxDecoration(color: Colors.grey,border: Border.all(width: 10,color: Colors.brown),borderRadius: BorderRadius.circular(20)),child: Text("  𝟜  X  𝟜  ",style: TextStyle(color: Colors.brown,fontSize: 40),selectionColor: Colors.brown),alignment: Alignment.center,)),
              SizedBox(height: 20,),

              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)
                  {
                    return puzzel5x5();
                  },
                ));
              },child: Container(width: 250,height: 80,decoration: BoxDecoration(color: Colors.grey,border: Border.all(width: 10,color: Colors.brown),borderRadius: BorderRadius.circular(20)),child: Text("  𝟝  X  𝟝  ",style: TextStyle(color: Colors.brown,fontSize: 40),selectionColor: Colors.brown),alignment: Alignment.center,)),
            ],
          ),
        ),
      ),
    );
  }
}
