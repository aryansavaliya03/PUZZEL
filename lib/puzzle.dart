//import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main()
{
    runApp(MaterialApp(home: Home11(),));
}
class Home11 extends StatefulWidget {
  const Home11({super.key});

  @override
  State<Home11> createState() => _HomeState();
}

class _HomeState extends State<Home11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Puzzle"),),
        body: Column(children: [
            Row(children: [
                    Expanded(child: Container(height: 100,color: const Color.fromARGB(255, 220, 139, 16),),),
                    Expanded(child: Container(height: 100,color: const Color.fromARGB(255, 220, 139, 16)),),
                    Expanded(child: Container(height: 100,color: const Color.fromARGB(255, 220, 139, 16),),)

            ],),
             Row(children: [
                    Expanded(child: Container(height: 100,color: const Color.fromARGB(255, 220, 212, 212),),),
                    Expanded(child: Container(height: 100,color: const Color.fromARGB(255, 220, 212, 212),),),
                    Expanded(child: Container(height: 100,color: const Color.fromARGB(255, 220, 212, 212),),)

            ],),
             Row(children: [
                    Expanded(child: Container(height: 100,color: const Color.fromARGB(255, 0, 233, 8),),),
                    Expanded(child: Container(height: 100,color: const Color.fromARGB(255, 0, 233, 8)),),
                    Expanded(child: Container(height: 100,color: const Color.fromARGB(255, 0, 233, 8),),)

            ],)
        ],),
    );
  }
}