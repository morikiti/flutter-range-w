import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './next_page.dart';
//final myController = TextEditingController();
//String name;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'サンプルアプリ',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'W変換アプリ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final wController = TextEditingController();
  final houseController = TextEditingController();
  final timeController = TextEditingController();
  int res = 0;

  double result = 0;
  void mathResult(String kw,String hw, String time){
    setState(() {
      result = double.parse(kw) / double.parse(hw) * double.parse(time);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: '記載W',
              ),
               controller: wController,
               onChanged: (text) {
                 //name = text;
                // print(name);
                },
            ),
            TextField(
              controller: houseController,
              decoration: InputDecoration(
                hintText: '自宅レンジーW',
              ),
            ),
            TextField(
              controller: timeController,
              decoration: InputDecoration(
                hintText: '記載時間',
              ),
            ),
            ElevatedButton(
              child: Text('変換W'),
              onPressed: () {
                mathResult(wController.text, houseController.text,timeController.text);
              },
            ),
            Text(result.toString()+"秒"),
          ],
        ),

      ),
    );
  }
}
