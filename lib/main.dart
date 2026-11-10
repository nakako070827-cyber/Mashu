import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '宮崎のおすすめスポット',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://picsum.photos/300/200',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('詳しく見る')),
              SizedBox(height: 20),
              SizedBox(width: 10),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  '青島神社・高千穂峡・サンメッセ日南',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
