import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  // StatelessWidget등 Widget을 만들고 싶으면 build 메소드를 구현해야 한다.
  @override // 부모 class에 이미 있는 메소드를 override 한다는 것.
  Widget build(BuildContext context) {
    // BuildContext context???
    // return은 어플이 어떻게 보여지고 싶은지에 따라서 material(android)과 cupertino(IOS)도 할수 있다.
    // 그래서 테마(시작점)를 선택해줘야 한다.
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.lightGreenAccent),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          title: Text('Hello Dart'),
        ),

        body: Center(
          child: Text(
            'Hello Flutter',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ), // Widget은 child,자식을 가지고 있다.
      ),
    );
  }
}
