import 'package:flutter/material.dart';
import 'package:logindice/dice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){}
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){}
          )
        ],
      ),
      body: Builder(
        builder: (context) {
          return GestureDetector(  // 제스처 인식하는 위젯
            onTap: FocusScope.of(context).unfocus, // 화면 터치 시 포커스 해제(키보드 닫기)
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                    child:
                    Image(image: AssetImage('image/chef.gif'),
                      width: 170.0,
                      height: 190.0,
                    ),
                  ),
                  Form(
                    child: Theme(
                        data: ThemeData(
                            primaryColor: Colors.teal,
                            inputDecorationTheme: InputDecorationTheme(
                              labelStyle: TextStyle(color: Colors.teal, fontSize: 15.0),
                            )
                        ),
                        child: Container(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              TextField(
                                controller: controller,
                                decoration: InputDecoration(
                                    labelText: 'Enter dice'
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              TextField(
                                controller: controller2,
                                decoration: InputDecoration(
                                    labelText: 'Enter Password'
                                ),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                              ),
                              SizedBox(height: 40.0,),
                              ButtonTheme(
                                  minWidth: 100.0,
                                  height: 50.0,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orangeAccent, // 버튼의 최소 크기
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 35.0,
                                      ),
                                      onPressed: () {
                                        if(controller.text == 'dice' && controller2.text == '1234') {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (BuildContext context) => Dice())
                                          );
                                        } else if(controller.text == 'dice' && controller2.text != '1234') {
                                          showSnackBar2(context);
                                        } else if(controller.text == 'dice' && controller2.text != '1234') {
                                          showSnackBar3(context);
                                        } else {
                                          showSnackBar(context);
                                        }
                                      }
                                  )
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void showSnackBar(BuildContext context) {
  ScaffoldMessenger
      .of(context)
      .showSnackBar(
      SnackBar(
        content: Text('로그인 정보를 다시 확인하세요' ,textAlign: TextAlign.center),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );
}

void showSnackBar2(BuildContext context) {
  ScaffoldMessenger
      .of(context)
      .showSnackBar(
      SnackBar(
        content: Text('비밀번호가 일치하지 않습니다' ,textAlign: TextAlign.center),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );
}

void showSnackBar3(BuildContext context) {
  ScaffoldMessenger
      .of(context)
      .showSnackBar(
      SnackBar(
        content: Text('dice의 철자를 확인하세요' ,textAlign: TextAlign.center),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );
}