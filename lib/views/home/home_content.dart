import 'package:flutter/material.dart';
import '../widget/carousel_view.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Text.rich(
            TextSpan(
              text: 'Bem vindo à', 
              style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: 22),
              children: <TextSpan>[
                TextSpan(
                  text: ' BeeSense',
                  style: TextStyle(fontWeight: FontWeight.w700, color: Color(0xFF06D6A0)),
                ),
                TextSpan(
                  text: '!',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(height: 18),
          SizedBox(
            height: 180,  
            child: const Carrossel(),
          ),
          SizedBox(height: 12),
          const Text(
              'Conhecer sobre as abelhas sem ferrão é melhorar a qualidade do nosso país!',
              style: TextStyle(fontSize: 14),
            ),
          ]
        )
    );
  }
}
