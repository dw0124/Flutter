import 'package:flutter/material.dart';
import 'package:start_flutter/Navigator/ScreenA.dart';
import 'package:start_flutter/Navigator/ScreenB.dart';
import 'package:start_flutter/Navigator/ScreenC.dart';

class MyNavigator extends StatelessWidget {
  const MyNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC(),
      },
    );
  }
}

// class MyNavigator extends StatelessWidget {
//   const MyNavigator({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Builder(
//         builder: (context) {
//           return Center(
//             child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => ScreenA())
//                   );
//                 },
//                 child: Text('Go to ScreenA')
//             ),
//           );
//         }
//       ),
//     );
//   }
// }