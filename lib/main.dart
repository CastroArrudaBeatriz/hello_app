import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            firstRow(),
            secondRow(),
            thirdRow()
          ],
        ),
      ),
    );
  }


  Row firstRow() {
    return Row(
      children: [
        Expanded(flex: 2,
            child: Container(
              color: Colors.red,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '1',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ],
              ),
            )
        ),

        Expanded(flex: 1,
            child: Container(
              color: Colors.orange,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '2',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ],
              ),
            )
        )
      ],
    );
  }

  Row secondRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 1,
            child: Container(
              color: Colors.green,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('4',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 30, color: Colors.white),),
                ],
              ),
            )),

        Expanded(flex: 1,
            child: Container(
              color: Colors.purple,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('5',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 30, color: Colors.white),)
                ],
              ),)),
        Expanded(flex: 1, child: Container(color: Colors.orange,height: 200))
      ],
    );
  }

  Row thirdRow() {
    return Row(
      children: [
        Expanded(flex: 1, child: Container(color: Colors.green,height: 250)),
        Expanded(flex: 2,
            child: Container(
              color: Colors.blue,
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('3',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 30, color: Colors.white),)
                ],
              ),))
      ],
    );
  }
}
