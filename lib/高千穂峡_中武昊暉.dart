import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: TakachihokyoPage()));
}

class TakachihokyoPage extends StatefulWidget {
  @override
  State<TakachihokyoPage> createState() => _TakachihokyoPageState();
}

class _TakachihokyoPageState extends State<TakachihokyoPage> {
  int likes = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('高千穂峡')),
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
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '高千穂峡は約80～100mもの断崖が約7㎞に渡って続く峡であり、ボートで巡れば幻想的な雰囲気に包まれ、滝を見上げれば迫力満点！',
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('１つ目のおすすめスポットへ'),
            ),

            SizedBox(height: 20),

            Text('いいね $likes', style: TextStyle(fontSize: 20)),

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
}
