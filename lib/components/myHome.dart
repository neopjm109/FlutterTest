import 'package:flutter/material.dart';
import 'myLayout.dart';
import 'myTab.dart';
import 'myTabSimple.dart';

class MyHomeApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: MyHomePage(title: 'Flutter Demo Home Page'),
        );
    }
}

class MyHomePage extends StatefulWidget {
    MyHomePage({Key key, this.title}) : super(key: key);

    final String title;

    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int _counter = 0;

    void _incrementCounter() {
        setState(() {
            _counter++;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(widget.title),
            ),
            body: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Text(
                        'You have pushed the button this many times:',
                    ),
                    Text(
                        '$_counter',
                        style: Theme.of(context).textTheme.headline4,
                    ),
                    RaisedButton(
                        onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyLayoutApp())
                            );
                        },
                        child: Text("Go Layout")
                    ),
                    RaisedButton(
                        onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyTabApp())
                            );
                        },
                        child: Text("Go Tab")
                    ),
                    RaisedButton(
                        onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => TabLayoutDemo())
                            );
                        },
                        child: Text("Go Tab Simple")
                    )
                ],
                ),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: Icon(Icons.add),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }
}
