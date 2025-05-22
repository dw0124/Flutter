import 'package:flutter/material.dart';
import 'package:start_flutter/BBANTO.dart';
import 'package:start_flutter/method_channel/battery_level_page.dart';
import 'package:start_flutter/startAppbar.dart';
import 'package:start_flutter/startButton.dart';
import 'package:start_flutter/startNavigator.dart';
import 'package:start_flutter/startSnackBar.dart';
import 'package:start_flutter/startToastMessage.dart';
import 'package:start_flutter/Navigator/myNavigator.dart';
import 'package:start_flutter/startStateful.dart';

void main() => runApp(MyApp());
// void main() => runApp(BBantoApp());
// void main() => runApp(StartAppBar());
// void main() => runApp(StartSnackBar());
// void main() => runApp(StartToastmessage());
// void main() => runApp(StartNavigator());
// void main() => runApp(MyNavigator());
// void main() => runApp(StartButton());
// void main() => runApp(Startstateful());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: BatteryLevelPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),  // AppBar의 타이틀
        centerTitle: true,      // AppBar의 타이틀을 가운데 정렬
        backgroundColor: Colors.redAccent, // 앱바 배경색
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("hello"),
                Text("hello"),
              ],
            ),
      ),
    );
  }
}

