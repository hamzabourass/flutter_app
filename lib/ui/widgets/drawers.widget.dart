import 'package:first_app/config/global.params.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.orange, Colors.deepOrange],
              ),
            ),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/WhatsApp Image 2023-10-21 at 13.01.53.jpeg"),
                radius: 40,
              ),
            ),
          ),
          ...(GlobalParams.menus).map((item){

            return Column(
              children: [
                ListTile(
                  title: Text('${item['title']}', style: TextStyle(fontSize: 25)),
                  leading: item['icon'],
                  trailing: const Icon(Icons.arrow_right, color: Colors.orange),
                  onTap: () {
                    Navigator.of(context)
                        .pop(); //pour n'afficher pas le drawable apres le retour
                    Navigator.pushNamed(context, "${item['route']}");
                  },
                ),
                Divider(color: Colors.deepOrange, height: 4,)
              ],
            );


    })


        ],
      ),
    );
  }
}
