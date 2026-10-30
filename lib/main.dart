import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '宮崎のおすすめスポット',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 100),
              Text(
                '青島神社・高千穂峡・サンメッセ日南',
                style: TextStyle(fontSize: 28, color: Colors.orange),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
