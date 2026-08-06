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
  // var lee = Player(); // 위에서 이름기반으로 만들고, required 해줬을때
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
      debugShowCheckedModeBanner: false, // Debug 배너 지우기
      home: Scaffold(
        // backgroundColor: Colors.black,
        // 0x - 16진수로 작성. / FF - 투명도 / 181818 - 실제 색상 값
        backgroundColor: Color(0xFF181818),
        // Scaffold - 화면의 구성 및 구조에 관한 위젯
        body: Padding(
          // padding: const EdgeInsets.all(
          //   10,
          // ), // EdgeInsets - 위젯의 여백(Padding)이나 바깥 여백(Margin)을 줄 때 사용하는 클래스
          padding: const EdgeInsets.symmetric(horizontal: 40),

          child: Column(
            children: [
              SizedBox(height: 80),
              Row(
                // vertical direction
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          // color: Colors.white.withValues(alpha: 0.8), // 투명도 추가방법 1
                          color: Color.fromRGBO(
                            255,
                            255,
                            255,
                            0.8,
                          ), // 투명도 추가방법 2
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
