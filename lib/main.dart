import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratory №2',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Инкремент'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _clearCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        foregroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Значение инкремента:',
              style: TextStyle(color: Colors.green, fontSize: 24),
            ),
            Text(
              '$_counter',
              //style: Theme.of(context).textTheme.headline1,
              style: const TextStyle(color: Colors.green, fontSize: 24),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              ElevatedButton(
                onPressed: _decrementCounter,
                child: const Text("-",
                    style: TextStyle(color: Colors.black, fontSize: 20)),
                style: ElevatedButton.styleFrom(primary: Colors.red),
              ),
              ElevatedButton(
                  onPressed: _incrementCounter,
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: const Text("+",
                      style: TextStyle(color: Colors.black, fontSize: 20)))
            ]),

            ElevatedButton(onPressed: _clearCounter,
              child: const Text("Сбросить",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              style: ElevatedButton.styleFrom(primary: Colors.white),),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   backgroundColor: Colors.brown,
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}