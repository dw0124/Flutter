import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: StartButtonPage()
    );
  }
}

class StartButtonPage extends StatelessWidget {
  const StartButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button Page'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                //print('Text Button');
              },
              onLongPress: () {
                print('Text Button');
              },
              child: Text('Text Button', style: TextStyle(fontSize: 20.0)),
            ),
            ElevatedButton(
              onPressed: () {
                print('Elevated Button');
              },
              child: Text('Elevated Button'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 0.0,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                print('Outlined Button');
              },
              child: Text('Outlined Button'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.black87, width: 2.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            TextButton.icon(
              onPressed: null, // Null 버튼 비활성화
              icon: Icon(Icons.home, size: 20.0, color: Colors.black87),
              label: Text('Icon Button'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.greenAccent,
                minimumSize: Size(200, 50),   // 버튼의 최소 크기
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('Icon ElevatedButton Button');
              },
              icon: Icon(Icons.home, size: 20.0, color: Colors.white),
              label: Text('Icon Elevaated Button'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                minimumSize: Size(200, 50),   // 버튼의 최소 크기
              ),
            ),
            OutlinedButton.icon(
              onPressed: null,
              icon: Icon(Icons.home, size: 20.0, color: Colors.black87),
              label: Text('Icon Outlined Button'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black,
                minimumSize: Size(200, 50),
                disabledForegroundColor: Colors.black,  // 비활성화 시 버튼 색상
                disabledBackgroundColor: Colors.grey,  // 비활성화 시 버튼 색상
              ),
            ),
            OverflowBar(
              alignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                TextButton(child: const Text('Button 1'), onPressed: () {}),
                OutlinedButton(child: const Text('Button 2'), onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
