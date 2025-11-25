import 'package:flutter/material.dart';

class CustomNavigatorBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomNavigatorBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      animationDuration: const Duration(milliseconds: 1000),
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      // labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          label: 'Início',
        ),
        NavigationDestination(
          icon: Icon(Icons.explore),
          label: 'Isca',
        ),
        NavigationDestination(
          icon: Icon(Icons.account_box_outlined),
          label: 'Perfil',
        ),
      ],
    );
  }
}
