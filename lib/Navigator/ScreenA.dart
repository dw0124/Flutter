import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Go to ScreenB'),
                onPressed: () {
                  Navigator.pushNamed(context, '/b');
                },
              ),
              ElevatedButton(
                child: Text('Go to ScreenB'),
                onPressed: () {
                  Navigator.pushNamed(context, '/c');
                },
              ),
            ],
          )
      ),
    );
  }
}

