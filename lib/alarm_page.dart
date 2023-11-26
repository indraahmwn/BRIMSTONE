import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 3, // for example, three alarms
        itemBuilder: (context, index) {
          return _buildAlarmTile();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Add new alarm
        },
        child: Icon(Icons.add, size: 36.0),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }

  Widget _buildAlarmTile() {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[900],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '21.38',
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
              Switch(
                value: true,
                onChanged: (bool value) {
                  // TODO: Toggle alarm state
                },
                activeColor: Colors.blueAccent,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.alarm, color: Colors.blueAccent),
              SizedBox(width: 4),
              Text(
                'Sun, Sat, Fri',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              // Additional icons and labels as needed
            ],
          ),
          // Additional settings for each alarm as needed
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.white54,
      selectedItemColor: Colors.blueAccent,
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
          icon: Icon(Icons.hourglass_bottom),
          label: 'Stopwatch',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timer),
          label: 'Timer',
        ),
      ],
      // TODO: Set the current index for the navigation bar
    );
  }
}
