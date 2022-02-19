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
      home: const MyHomePage(title: 'サンプルアプリ'),
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
  int _counter = 0;
  final myController = TextEditingController();
//  String name;


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  String inputText = "First";
  void setText (String s) {
    setState(() {
      inputText = s;
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
                hintText: '名前',
              ),
               controller: myController,
               onChanged: (text) {
                 //name = text;
                // print(name);
                },
            ),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                hintText: '趣味',
              ),
            ),
            ElevatedButton(
              child: Text('新規登録'),
              onPressed: () {
                final hobbyText = myController.text;
                print("okeoke");
                print(hobbyText);
              },
            ),
            GestureDetector(
              onTap: () {
                setText(myController.text);
              },
              child: Text("押せ"),
            ),
            Text(inputText),
          ],
        ),
       /* child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Enter a serch term',
          ),
          autofocus: true,
        ),*/
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
