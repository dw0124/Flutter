import 'package:flutter/material.dart';

class StartAppBar extends StatelessWidget {
  const StartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: AppBarPage(),
    );
  }
}

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),   // 앱바 타이틀
        centerTitle: true,    // 타이틀 중앙 위치
        elevation: 0.0,

        actions: [    // 앱바 우측 요소
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print('Shopping Cart button is clicked');
              }
          ),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search button is clicked');
              }
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/boo.jpeg'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/doo.jpeg'),
                  backgroundColor: Colors.white,
                ),
              ],
              accountName: Text('Boo'),
              accountEmail: Text('Boo@gmail.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[700],
              ),
              trailing: Icon(Icons.add),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[700],
              ),
              trailing: Icon(Icons.add),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked');
              },
            ),
          ],
        ),
      ),
    );
  }
}
