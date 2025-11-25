import 'package:flutter/material.dart';

class Carrossel extends StatelessWidget {
  const Carrossel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselView(
      itemExtent: 300.0,
      padding: const EdgeInsets.all(4),

      children: [
        _buildCard(
          image: 'assets/images/post1.jpg',
          title: 'Caixa de abelha sem ferrão',
        ),
        _buildCard(image: 'assets/images/post2.jpg', title: ''),
      ],
    );
  }

  Widget _buildCard({required String image, required String title}) {
    return Container(
      width: 300,
      height: 200,
      // margin: const EdgeInsets.symmetric(horizontal: ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),

      child: title.isNotEmpty
          ? Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.15,
                    height: 1.28,
                    shadows: [
                      Shadow(
                        color: Colors.black54,
                        blurRadius: 6,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : null,
    );
  }
}
