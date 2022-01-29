import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final pages=[
    Container(
      color: Color(0xff2c2c54),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network('https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512_960_720.jpg'),
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 30,),
            child: Column(
              children: [
                Text('Earth',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                Text('I am a teacher of Bornormala childs Garden School of CharPatuly in Tangail districkt. So I am proffesional teach')
              ],
            ),

          ),
        ],
      ),
    ),
    Container(
      color: Color(0xff4cd137),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network('https://cdn.pixabay.com/photo/2016/11/29/13/56/asian-1870022_960_720.jpg'),
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 30,),
            child: Column(
              children: [
                Text('students',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                Text('English is an International Language.As a student of English Department it is our main duty to speak in english fluently')
              ],
            ),

          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 600,
        enableSideReveal: true,
      ),

    );
  }
}

