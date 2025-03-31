import 'package:flutter/material.dart';

class BBantoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BBANTO",
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text("BBANTO ID CARD"),
        backgroundColor: Colors.amber[700],
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/boo.jpeg"),
                radius: 60.0,   // 원의 반지름(크기) 지정
              ),
            ),

            Divider(
              height: 60.0,     // Divider가 차지하는 전체 높이 (위아래 여백 포함)
              color: Colors.white,
              thickness: 0.5,   // 실제 선의 두께
              endIndent: 30.0,  // 오른쪽 끝에서 떨어지는 거리
              // indent: 30.0,  // 왼쪽 끝에서 떨어지는 거리
            ),

            Text("Name",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("BBANTO",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Text("BBANTO POWER LEVEL",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                )
            ),

            SizedBox(
              height: 10.0,
            ),

            Text("14",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("using lightsaber",
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("face hero tattoo",
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("fire flames",
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),

            Spacer(),

            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/doo.jpeg"),
                radius: 40.0,
                //backgroundColor: Colors.amber[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}

