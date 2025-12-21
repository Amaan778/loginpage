import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sharedfile extends StatefulWidget {
  const sharedfile({super.key, required this.title});

  final String title;

  @override
  State<sharedfile> createState() => _sharedfileState();
}

class _sharedfileState extends State<sharedfile> {
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    readData();
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      writedata();
    });
  }

  writedata() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("counter", _counter);
    setState(() {});
  }

  readData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
  _counter=   prefs.getInt("counter") ?? 0;
  setState(() {
    
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pressed the button:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
