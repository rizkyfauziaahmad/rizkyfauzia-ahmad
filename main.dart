import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tugas kiki',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Mood')),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children: <Widget>[
              _buildBox(
                Icons.music_note,
                'Music',
                Color.fromARGB(255, 185, 130, 108),
              ),
              _buildBox(
                Icons.movie,
                'Movies',
                Color.fromARGB(255, 70, 45, 36),
              ),
              _buildBox(
                Icons.book,
                'Books',
                Color.fromARGB(255, 70, 45, 36),
              ),
              _buildBox(
                Icons.restaurant,
                'Food',
                Color.fromARGB(255, 185, 130, 108),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBox(IconData icon, String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 64,
            color: Colors.white,
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
