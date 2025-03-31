import 'package:flutter/material.dart';

class StartNavigator extends StatelessWidget {
  const StartNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator First Page'),
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('Go to the Second Page'),
            onPressed: () {
              var page = SecondPage();
              var route = MaterialPageRoute(builder: (BuildContext context) => page);
              Navigator.push(context, route);
            },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the First Page'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
