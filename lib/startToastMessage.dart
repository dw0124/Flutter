import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StartToastmessage extends StatelessWidget {
  const StartToastmessage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Toast Message',
      home: MyToastMessagePage(),
    );
  }
}

class MyToastMessagePage extends StatelessWidget {
  const MyToastMessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast Message'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
            onPressed: flutterToast,
            child: Text('Toast Button'),
        ),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(msg: 'Flutter Toast',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    fontSize: 20.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT
  );
}




