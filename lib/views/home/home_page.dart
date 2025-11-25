import 'package:beesense/views/isca/isca.dart';
import 'package:beesense/views/perfil/perfil.dart';
import 'package:flutter/material.dart';
import '../widget/navigation_bar.dart';
import '../widget/drawer.dart';
import 'home_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BeeSense',
          style: TextStyle(fontWeight: FontWeight.normal)
          ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
        ],
      ),

      drawer: MyDrawer(),

      bottomNavigationBar: CustomNavigatorBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      
      body: IndexedStack(
        index: currentIndex,
        children: [
          HomeContent(),
          Isca(),
          Perfil(),
        ],
      ),
    );
  }
}
