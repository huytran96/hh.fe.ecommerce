import 'package:flutter/material.dart';
import 'package:flutterapp/screen/main-page/main-page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainPage(),


      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedIconTheme: const IconThemeData(color: Colors.blue),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        selectedLabelStyle: const TextStyle(color: Colors.blue),
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home),
            title: Text('Trang chủ'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Danh mục'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Tìm kiếm'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Thông báo'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Cá nhân'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
