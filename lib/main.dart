import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1; //percobaan 1
  String _text = "Ganjil"; //percobaan 2
  String _kelipatan = "";
  String _prima = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter>10){
        _counter = 1; //percoban 1
      }

      if(_counter%2 == 0){ //percobaan 2
        _text = "Genap";
      }else{
        _text = "Ganjil";
      }

      _text = "Ganjil: ";
      for(int i=0; i<= _counter; i++){
        if(i%2 !=0){
          _text += '${i}, ';
        }
      }

      _text = "Genap";
      if(_counter%2 != 0){
        _text = "Ganjil : 1";

        for(int i=1; i<=_counter; i++){
          _text += ', $i';
        }
      }

      _kelipatan = 'Kelipatan : ';
      for(int i=1; i<=_counter; i+=3){
        if(i>1) _kelipatan += ', ';
        _kelipatan += '$i';
      }

      _prima = 'Bilangan Prima : ';
      for(int i=2; i<=_counter; i++){
        String tempPrima = '';
        for(int j=2; j<=i; j++){
          if(j==i && i!=2) break;
          if(i%j == 0 && i != 2){
            tempPrima = '';
            break;
          } else {
            tempPrima = '$i ';
          }
        }
        _prima += tempPrima;
      }
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
            const Text(
              'Hello World',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _kelipatan,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _prima,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
