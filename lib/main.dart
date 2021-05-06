import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Foot Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Gayan'),
          ),
          body: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(20.0),
                  child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          _products.add('Advanced Foot Tester');
                        });
                        
 
                      },
                      child: Text('Add Product'))),
              Column(
                children: _products
                    .map(
                      (e) => Card(
                        child: Column(
                          children: [
                            Image.asset('assets/1.jpg'),
                            Image.asset('assets/2.jpeg'),
                            Text(e)
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          )),
    );
  }
}
