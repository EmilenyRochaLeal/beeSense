import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Perfil'),
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
      //   ],
      // ),
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.of(context).pop('Retornando da tela de perfil');
          }, 
          child: const Text('Voltar')
        ),
      ),
    );
  }
}