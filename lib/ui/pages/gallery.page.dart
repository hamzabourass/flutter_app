import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        backgroundColor: Colors.orange, // Couleur de la barre d'applications
      ),
      body: Center(
        child: Text('Gallery Page',style: Theme.of(context).textTheme.headlineLarge,),

      ),
    );
  }
}
