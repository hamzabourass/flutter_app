import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Page'),
        backgroundColor: Colors.orange, // Couleur de la barre d'applications
      ),
      body: Center(
        child: Text('Counter Value => $counter',style: Theme.of(context).textTheme.headlineLarge,),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                ++counter;
              });
            },
            child: Icon(Icons.add),
          ),
          SizedBox(width: 8,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if(counter!=0) {
                  --counter;
                }
              });
            },
            child: Icon(Icons.remove),
          ),
        ],
      )
    );
  }
}
