import 'package:flutter/material.dart';

import 'homework/homework1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Homework1(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 2,
              child: Container()),
          Expanded(
              flex: 3,
              child:Column(
                children: [
                  Row(

                  )
                ],
              )),
        ],
      ),
    );
  }


  Widget customButton({required String text,required Color texColor,required Color butonColor,required Function onTap,required double wtidh}){

    return MaterialButton(
    shape: CircleBorder(),
      onPressed: () { onTap(); },
      color: butonColor,
      child:  Text(text,style: TextStyle(fontSize: 30),),
    );
  }



}

