import 'package:flutter/material.dart';

class Player {
  // String name = 'lee';
  // String name;
  String? name; // 타입 뒤에 ?(옵셔널)이 붙으면 아무 파라미터 없이도 Player를 만들 수 있음.

  // Player({required this.name});
  Player();
}

void main() {
  // var lee = Player('jaehee'); // 객체생성, new를 안써줘도 된다.
  // var lee = Player(name: 'jaehee'); // 위에서 이름기반으로 만들고, required 해줬을때
  var lee = Player(); // 위에서 이름기반으로 만들고, required 해줬을때
  runApp(App()); // 앱 실행시 첫번째로 뜨는 위젯. 앱의 root
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
        // Scaffold - 화면의 구성 및 구조에 관한 위젯
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
          title: Text('Hello Dart', style: TextStyle(color: Colors.tealAccent)),
        ),

        body: Center(
          child: Text(
            'Hello Flutter',
            style: TextStyle(fontSize: 30.0, color: Colors.purple),
          ),
        ), // Widget은 child,자식을 가지고 있다.
      ),
    );
  }
}
