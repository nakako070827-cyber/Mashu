import 'package:flutter/material.dart';
import '高千穂峡_中武昊暉.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SpotPage());
  }
}

class SpotPage extends StatefulWidget {
  @override
  State<SpotPage> createState() => _SpotPageState();
}

class _SpotPageState extends State<SpotPage> {
  int likes = 0;

  @override
  Widget build(BuildContext context) {
    String message = 'いいね $likes';
    Color textColor;

    if (likes == 0) {
      textColor = Colors.transparent;
    } else if (likes > 0 && likes < 10) {
      textColor = Colors.black;
    } else if (likes >= 10 && likes < 20) {
      textColor = Colors.red;
    } else {
      textColor = Colors.amber;
    }
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '宮崎のおすすめスポット',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://www.kanko-miyazaki.jp/storage/tourism_attractions/1001/responsive_images/3APEmDD9GHUnajjL5blMszDHqb9TPVtnWhco4ZWd__1800_1200.jpg',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TakachihokyoPage()),
                );
              },
              child: Text('２つ目のおすすめスポットへ'),
            ),

            SizedBox(height: 20),

            Text(
              'いいね $likes',
              style: TextStyle(fontSize: 20, color: textColor),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  likes = likes + 1;
                });
              },
              child: Text('いいね'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (likes > 0) {
                    likes = likes - 1;
                  }
                });
              },
              child: Text('取り消し'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  likes = 0;
                });
              },
              child: Text('リセット'),
            ),
          ],
        ),
      ),
    );
  }
} //(^_^)
