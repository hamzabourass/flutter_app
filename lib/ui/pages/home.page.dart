import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/drawers.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.orange, // Couleur de la barre d'applications
      ),
      body: Center(
        child: Text("Home Page", style: Theme.of(context).textTheme.headline6),
      ),
    );
  }
}
