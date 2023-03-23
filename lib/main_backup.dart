import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// 1. エントリーポイントのmain関数
void main() {
  // 2. MyAppを呼び出す
  runApp(const MyApp());
}

// MyAppのクラス
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 3. タイトルとテーマを設定する。画面の本体はMyHomePageで作る。
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String _parity = 'even';

  // 5. カウンタが押された時のメソッド
  void _incrementCounter() {
    setState(() {
      _counter+=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 4. MyHomePageの画面を構築する部分
    return Scaffold(
      // 画面上部のタイトル部分
      appBar: AppBar(
        // title: Text(widget.title),
        title: Row(children: const [
          Icon(
            Icons.create,
            color: Colors.pink,
          ),
          Text('MyFirstTitle'),
          Icon(Icons.create),
        ]),
      ),
      // body: Text('Hello World!'),
      body: Column(children: [
        const Text('hello'),
        const Text('world'),
        Text('$_counter'),
        if(_counter %2 == 0)
          const Text(
            'even',
          ),
        TextButton(
          onPressed: () => {
            print('button has pushed'),
            setState(() {
              _counter++;
            }),
          },
          child: const Text('text button'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
             Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 24.0,
             ),
            Icon(
              Icons.audiotrack,
              color: Colors.green,
              size: 30.0,
            ),
            Icon(
              Icons.beach_access,
              color: Colors.blue,
              size: 36.0,
            ),
            Icon(
              FontAwesomeIcons.gift,
              color: Colors.blue,
              size: 36.0,
            ),
          ],
        ),
        Stack(children: const [
          Icon(
            Icons.favorite,
            color: Colors.blue,
            size: 30,
          ),
          Text(
            'stack',
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ],),
      ]),
      // 右下の「+」ボタンに対応するフローティングアクションボタン
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
          color: Colors.green,
        ),
      ),
      drawer: const Drawer(child: Center(child: Text('hoge')),),
      endDrawer: const Drawer(child: Text('hoge')),
    );
  }
}