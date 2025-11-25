import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Text(
              'Menu',
              // style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
          ),
         NavigationDrawerDestination(
          icon: Icon(Icons.notification_add), 
          label: Text('Notificações')
          ),
          NavigationDrawerDestination(
          icon: Icon(Icons.favorite_border_outlined), 
          label: Text('Favoritos')
          ), 
          NavigationDrawerDestination(
          icon: Icon(Icons.people_alt_outlined), 
          label: Text('Equipe')
          ),
           NavigationDrawerDestination(
          icon: Icon(Icons.contact_page_outlined), 
          label: Text('Contato')
          ),
        ],
      );
  }
}
