import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterWidget(),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter"), centerTitle: true),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tap "-" to decrement',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _count--;
                    });
                  },
                  child: Text("-", style: TextStyle(fontSize: 24)),
                ),

                SizedBox(width: 20),

                Text(
                  "$_count",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                SizedBox(width: 20),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _count++;
                    });
                  },
                  child: Text("+", style: TextStyle(fontSize: 24)),
                ),
              ],
            ),

            SizedBox(height: 10),

            Text(
              'Tap "+" to increment',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),

      backgroundColor: Color(0xff8996d5),
    );
  }
}
