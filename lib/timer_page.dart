import 'package:flutter/material.dart';
import 'timer_page.dart';
import 'home_page.dart';
import 'stopwatch_page.dart';
import 'alarm_page.dart';

class TimerPage extends StatefulWidget {
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildTimeCircle('01', 'jam'),
                _buildTimeCircle('02', 'menit'),
                _buildTimeCircle('00', 'detik'),
              ],
            ),
          ),
          _buildNumberPad(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Add start timer logic
        },
        child: Icon(Icons.play_arrow, size: 36.0),
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildTimeCircle(String time, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.blueGrey[900],
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              time,
              style: TextStyle(color: Colors.white, fontSize: 36),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(label.toUpperCase(),
            style: TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }

  Widget _buildNumberPad() {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1.5,
        padding: const EdgeInsets.all(20),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(12, (index) {
          if (index == 9) return _buildNumberButton("00");
          if (index == 10) return _buildNumberButton("0");
          if (index == 11)
            return _buildIcon(Icon(Icons.backspace, color: Colors.white));
          return _buildNumberButton("${index + 1}");
        }),
      ),
    );
  }

  Widget _buildNumberButton(String number) {
    return ElevatedButton(
      onPressed: () {
        // TODO: Add number to timer
      },
      child: Text(
        number,
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(20),
        primary: Colors.blueGrey[800], // Button color
      ),
    );
  }

  Widget _buildIcon(Icon icon) {
    return ElevatedButton(
      onPressed: () {
        // TODO: Handle backspace
      },
      child: icon,
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(20),
        primary: Colors.blueGrey[800], // Button color
      ),
    );
  }

}