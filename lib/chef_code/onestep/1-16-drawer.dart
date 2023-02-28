// ignore: file_names
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/bbanto/smiley.gif'),
            ),
            otherAccountsPictures: const [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/bbanto/halloween.gif'),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/bbanto/halloween.gif'),
              )
            ],
            accountName: const Text('TEST'),
            accountEmail: const Text('gobooky@gmail'),
            onDetailsPressed: () {
              debugPrint('arrow is clicked');
            },
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0))),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.grey[850],
            ),
            title: const Text('Home'),
            onTap: () {
              debugPrint('Home is clicked');
            },
            trailing: const Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.grey[850],
            ),
            title: const Text('Setting'),
            onTap: () {
              debugPrint('Setting is clicked');
            },
            trailing: const Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.question_answer,
              color: Colors.grey[850],
            ),
            title: const Text('Q&A'),
            onTap: () {
              debugPrint('Q&A is clicked');
            },
            trailing: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
