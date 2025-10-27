import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeeSense'),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
        ],
      ),
      drawer: Drawer(child: Center(child: Text('Drawer menu'))),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(label: "Início", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Isca", icon: Icon(Icons.search)),
          BottomNavigationBarItem(
            label: "Perfil",
            icon: Icon(Icons.account_box_outlined),
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            Container(
              width: 300,
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/post1.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(28)),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text('Caixa de abelha sem ferrão', 
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 17, 
                      fontWeight: FontWeight.bold,
                    )),
                ),
            ),
             Container(
              width: 51,
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/post2.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(28)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
