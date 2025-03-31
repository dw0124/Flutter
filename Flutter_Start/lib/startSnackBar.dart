import 'package:flutter/material.dart';

class StartSnackBar extends StatelessWidget {
  const StartSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SnackBar',
        home: StartSnackBarPage()
    );
  }
}

class StartSnackBarPage extends StatelessWidget {
  const StartSnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: SnackBarPage(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.thumb_up),
          onPressed: () {
            ScaffoldMessenger
                .of(context)
                .showSnackBar(
                  SnackBar(
                      content: Text('Like a new Snack Bar!'),
                      duration: Duration(seconds: 5),
                      action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()));
                          }
                      ),
                  )
                );
          }
      ),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Button'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Hello',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 1000),
          )
          );
        },
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          child: Text('Go to Second Page'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NextPage()),
            );
    },
      ),
    );
  }
}
class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text(
            '좋아요가 추가 되었습니다',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.redAccent
            ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '좋아요를 취소 하시겠습니까?',
                    style: TextStyle(fontSize: 20.0, color: Colors.redAccent),
                  ),
                  ElevatedButton(
                    child: Text('좋아요 취소'),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text('좋아요가 취소 되었습니다'),
                              duration: Duration(seconds: 3),
                          )
                      );
                    },
                  )
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}