import 'package:flutter/material.dart';

class Startstateful extends StatelessWidget {
  const Startstateful({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidgetpage(),
    );
  }
}

class MyWidgetpage extends StatefulWidget {   // StatefulWidget 자체는 immutable해야 함
  @override
  State<StatefulWidget> createState() { // StatefulWidget이 생성될 때 마다 호출
    // TODO: implement createState
    return MyWidgetpageState();
  }

}

class MyWidgetpageState extends State<MyWidgetpage> { // State<T>는 mutable한 특성 즉 상태(State)를 별도의 State 객체에서 관리함

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter')
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter += 1;
                print('$counter');
              });
            },
            child: const Icon(Icons.add),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter -= 1;
                print('$counter');
              });
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
