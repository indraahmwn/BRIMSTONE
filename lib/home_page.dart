import 'package:flutter/material.dart';
import 'timer_page.dart';
import 'stopwatch_page.dart';
import 'alarm_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final PageController _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Jam'),
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          AlarmPage(),
          ClockPage(), // Asumsikan ClockPage adalah halaman jam utama
          StopwatchPage(),
          TimerPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Alarm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Clock',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hourglass_empty),
            label: 'Stopwatch',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Timer',
          ),
        ],
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
        backgroundColor: Colors.black,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add),
      ),
    );
  }
}

class ClockPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Isi ClockPage
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            '21.38',
            style: TextStyle(fontSize: 60, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Text(
            'Kamis 26 Okt',
            style: TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
