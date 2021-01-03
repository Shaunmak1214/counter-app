import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;
  
  void increment(){
    setState(() => number++);
  }
  
    void decrement(){
    setState(() => number--);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      	
		 body: Center(
		  child: Column(
			mainAxisAlignment: MainAxisAlignment.center,
			children: [
			  Text(
				'This is how much money I have:',
				style: TextStyle(fontSize: 20),
			  ),
			  Text(
				'\$' + number.toString(),
				style: TextStyle(fontSize: 130),
			  ),
			],
		  ),
		),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: increment,
            child: Icon(Icons.add),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: decrement,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
